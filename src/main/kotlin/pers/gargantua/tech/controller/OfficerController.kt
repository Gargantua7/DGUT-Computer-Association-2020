package pers.gargantua.tech.controller

import org.springframework.context.support.ClassPathXmlApplicationContext
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.servlet.ModelAndView
import pers.gargantua.tech.po.Officer
import pers.gargantua.tech.service.MyService
import java.util.regex.Pattern

/**
 * @author Gargantua丶
 **/
@Controller
@RequestMapping("/officer")
class OfficerController {

    @RequestMapping("")
    fun forward(): String {
        return "officer"
    }

    @RequestMapping("/submit")
    fun submit(officer: Officer): ModelAndView {
        val modelAndView = ModelAndView().apply { viewName = "officer" }
        println(officer.name)
        if (officer.name == "行")
            return modelAndView.apply {
                addObject("msg", "你说行，辣就行")
                addObject("person", officer)
            }
        if (
            !Pattern.compile("^20[12][0789]\\d{8}$").matcher(officer.studentId).matches() ||
            officer.name == "" ||
            officer.sex == "" ||
            officer.local == "" ||
            officer.collage == "" ||
            officer.major == "" ||
            !Pattern.compile("^1[3456789]\\d{9}$").matcher(officer.phone).matches() ||
            officer.hobby == "" ||
            officer.firstIntent == "" ||
            officer.selfIntroduction == ""
        ) return modelAndView.apply {
            addObject("msg", "信息有误，请重新输入")
            addObject("person", officer)
        }
        try {
            ClassPathXmlApplicationContext(
                "pers/gargantua/tech/ApplicationContext.xml"
            ).getBean(MyService::class.java).add(officer)
        } catch (e: org.springframework.dao.DuplicateKeyException) {
            return modelAndView.apply {
                addObject("msg", "该档案已存在，如需修改请联系管理员修改")
                addObject("person", officer)
            }
        }
        return modelAndView.apply { addObject("msg", "提交成功") }
    }

    @RequestMapping("/search")
    fun search(studentId: String): ModelAndView {
        if (!Pattern.compile("^20[12][0789]\\d{8}$").matcher(studentId).matches())
            return ModelAndView().apply {
                addObject("msg", "信息有误，请重新输入")
                addObject("id", studentId)
                viewName = "signUp"
            }
        val officer = ClassPathXmlApplicationContext(
            "pers/gargantua/tech/ApplicationContext.xml"
        ).getBean(MyService::class.java).findPersonByStudentId(studentId, 1) as Officer?
        officer?.let {
            return ModelAndView().apply {
                addObject("p", officer)
                viewName = "resume"
            }
        }
        return ModelAndView().apply {
            addObject("msg", "不存在的档案")
            addObject("id", studentId)
            viewName = "signUp"
        }
    }
}
