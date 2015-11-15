package co.com.seguridog

import groovy.sql.Sql

import javax.validation.constraints.Null

class K9AdminController {

    def dataSource

    def index() {}

    def register_user(){}

    def user_register = {
        redirect(controller: "K9Admin", action: "register_user")
    }

    def users_list = {
        def list = K9User.findAll()
        [users:list]
    }

    def dogs_list = {
        def lista = Canine.findAll()
        [dogs:lista]
    }

    def register_dog(){}

    def dog_register = {
        redirect(controller: "K9Admin", action: "register_dog")
    }

    def save_data_dog = {
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into canine(version,photo_canine,color_canine,date_birthday,micro_chip,name_canine,sex_canine,state_canine,type_race) values (?, ?, ?, ?, ?, ?, ?, ?, ?)',
                [4,params.photoCanine,params.color_canine,params.date_birthday,params.micro_chip,params.name_canine,params.sex_canine,'Activo',params.type_race])
        redirect(controller: "K9Admin", action: "index")
    }

    def save_data_user = {
        def nameClass
        if( params.typeUsers.equals("2") ){
            nameClass = 'co.com.seguridog.K9Instructor'
        }else if( params.typeUsers.equals("3") ){
            nameClass = 'co.com.seguridog.K9Veterinarian'
        }else{
            nameClass = 'co.com.seguridog.K9Handler'
        }
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into k9user(version,photo_user,birth_date,cedula,cellphone,date_contract,e_mail,enable_user,first_name,last_name,login_pass,login_user,type_contract,type_users,class) values (?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?,?)',
                [6,params.photoUser,params.birthDate,params.cedula,params.cellphone,params.dateContract,params.eMail,true,params.firstName,params.lastName,params.loginPass,params.loginUser,params.typeContract,params.typeUsers,nameClass])
        redirect(controller: "K9Admin", action: "index")
    }

    def register_service (){
        def handler_list = K9Handler.findAllByEnableUser(true)
        def canine_list = Canine.findAllByStateCanine('Activo')
        [handler_list : handler_list, canine_list : canine_list]
    }

    def save_data_service (){
        Sql sql = Sql.newInstance(dataSource)
        sql.execute('insert into work_canine(version,address_rest_canine,address_ubication_work_area,canines_id,date_finish_return_unitk9,date_ubication_work_area,handlers_id,hours_per_day,type_service,user_of_service) values (?,?,?,?,?,?,?,?,?,?)',
                [0,params.addressRestCanine,params.addressWorkArea,params.canine_id,params.dateFinishWork,params.dateWorkArea,params.handler_id,params.hoursPerDay,params.typeService,params.userService])
        redirect(controller: "K9Admin", action: "index")
    }
}
