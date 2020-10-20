package pers.gargantua.tech.service

import pers.gargantua.tech.po.Person

/**
 * @author Gargantua丶
 **/
interface MyService {
    fun add(person: Person)
    fun findPersonByStudentId(studentId: String, findObj: Int): Person?
}