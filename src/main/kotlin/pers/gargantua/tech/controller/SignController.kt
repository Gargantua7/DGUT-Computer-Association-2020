package pers.gargantua.tech.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

/**
 * @author Gargantua丶
 **/
@Controller
@RequestMapping("/sign")
class SignController {

    @RequestMapping("/signIn")
    fun signIn() = "signIn"

    @RequestMapping("/signUp")
    fun signUp() = "signUp"
}