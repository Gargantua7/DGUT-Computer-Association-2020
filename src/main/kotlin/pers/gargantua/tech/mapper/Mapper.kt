package pers.gargantua.tech.mapper

import pers.gargantua.tech.po.Lecture
import pers.gargantua.tech.po.Member
import pers.gargantua.tech.po.Officer
import pers.gargantua.tech.po.Person

/**
 * @author Gargantua丶
 **/
interface Mapper {
    fun addMember(member: Member)
    fun addOfficer(officer: Officer)
    fun findMemberByStudentId(studentId: String): Person
    fun findOfficerByStudentId(studentId: String): Person
    fun addLecture(lecture: Lecture)
    fun lectureCount(): Int
}