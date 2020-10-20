package pers.gargantua.tech.controller

import org.springframework.context.support.ClassPathXmlApplicationContext
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.servlet.ModelAndView
import pers.gargantua.tech.po.Lecture
import pers.gargantua.tech.po.Member
import pers.gargantua.tech.po.Person
import pers.gargantua.tech.service.MyService
import java.util.regex.Pattern

/**
 * @author Gargantua丶
 **/
@Controller
@RequestMapping("/member")
class MemberController {

    @RequestMapping("")
    fun forward() = "member"

    @RequestMapping("/submit")
    fun submit(member: Member): ModelAndView {
        val modelAndView = ModelAndView().apply { viewName = "member" }
        if (member.name == "行")
            return modelAndView.apply {
                addObject("msg", "你说行，辣就行")
                addObject("person", member)
            }
        if (
            !Pattern.compile("^20[12][0789]\\d{8}$").matcher(member.studentId).matches() ||
            member.name == "" ||
            member.sex == "" ||
            member.local == "" ||
            member.collage == "" ||
            member.major == "" ||
            !Pattern.compile("^1[3456789]\\d{9}$").matcher(member.phone).matches()
        ) return modelAndView.apply {
            addObject("msg", "信息有误，请重新输入")
            addObject("person", member)
        }
        try {
            ClassPathXmlApplicationContext(
                "pers/gargantua/tech/ApplicationContext.xml"
            ).getBean(MyService::class.java).add(member)
        } catch (e: org.springframework.dao.DuplicateKeyException) {
            return modelAndView.apply {
                addObject("msg", "该档案已存在，如需修改请联系管理员修改")
                addObject("person", member)
            }
        }
        return modelAndView.apply { addObject("msg", "提交成功") }
    }

    @RequestMapping("/lecture")
    fun lecture() = "lecture"

    @RequestMapping("/lecture/submit")
    fun lectureSubmit(lecture: Lecture): ModelAndView {
        val modelAndView = ModelAndView().apply { viewName = "lecture" }
        if (
            !Pattern.compile("^2020\\d{8}$").matcher(lecture.studentId).matches() ||
            lecture.name == "" ||
            lecture.sex == "" ||
            lecture.local == "" ||
            lecture.collage == "" ||
            lecture.major == "" ||
            !Pattern.compile("^1[3456789]\\d{9}$").matcher(lecture.phone).matches()
        ) return modelAndView.apply {
            addObject("msg", "信息有误，请重新输入")
            addObject("person", lecture)
        }
        try {
            ClassPathXmlApplicationContext(
                "pers/gargantua/tech/ApplicationContext.xml"
            ).getBean(MyService::class.java).add(lecture)
        } catch (e: org.springframework.dao.DuplicateKeyException) {
            return modelAndView.apply {
                addObject("msg", "该档案已存在，如需修改请联系管理员修改")
                addObject("person", lecture)
            }
        }
        return modelAndView.apply { addObject("msg", "提交成功") }
    }
}