package pers.gargantua.tech.service.impl

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import pers.gargantua.tech.mapper.Mapper
import pers.gargantua.tech.po.Lecture
import pers.gargantua.tech.po.Member
import pers.gargantua.tech.po.Officer
import pers.gargantua.tech.po.Person
import pers.gargantua.tech.service.MyService

/**
 * @author Gargantua丶
 **/
@Service
@Transactional
open class ServiceImpl : MyService {
    @Autowired
    private lateinit var mapper: Mapper

    override fun add(person: Person) {
        when (person) {
            is Member -> mapper.addMember(person)
            is Officer -> mapper.addOfficer(person)
            is Lecture -> mapper.addLecture(person)
        }
    }

    override fun findPersonByStudentId(studentId: String, findObj: Int): Person? {
        return when (findObj) {
            0 -> mapper.findMemberByStudentId(studentId)
            1 -> mapper.findOfficerByStudentId(studentId)
            else -> null
        }
    }
}