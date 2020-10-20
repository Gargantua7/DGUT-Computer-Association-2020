package pers.gargantua.tech.po

/**
 * @author Gargantua丶
 **/
data class Lecture(
    override var studentId: String = "",
    override var name: String = "",
    override var sex: String = "",
    override var local: String = "",
    override var collage: String = "",
    override var major: String = "",
    override var phone: String = ""
) : Person(studentId, name, sex, local, collage, major, phone)