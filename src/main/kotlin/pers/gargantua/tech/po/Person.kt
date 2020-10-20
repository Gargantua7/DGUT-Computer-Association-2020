package pers.gargantua.tech.po

/**
 * @author Gargantua丶
 **/
abstract class Person(
    open var studentId: String = "",
    open var name: String = "",
    open var sex: String = "",
    open var local: String = "",
    open var collage: String = "",
    open var major: String = "",
    open var phone: String = ""
)