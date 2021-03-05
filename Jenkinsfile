#!/usr/bin/env groovy
/* vim: ft=groovy syntax=groovy
/* -*- mode: groovy; coding: utf-8 -*- */
import java.text.SimpleDateFormat
import groovy.io.FileType
properties(
    [
        parameters(
            [choice(
            choices: ["plan", "apply"], description: '', name: 'action')]
        )
    ]
)
node('master') {
    stage('Git checkout') {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'amzm3', url: 'git@github.com:Peterqin001/GitTest.git']]])
    }
    stage('Terraform initialize') {
        sh 'terraform init'
        sh  'terraform validate'
    }
     stage('Running choice') {
         echo "Running with your choice of: ${params.action}"
         switch("${params.action}") {
             case "plan":
                 echo "Running your choice of ${params.action}"
                 sh 'terraform plan -out=tfplan -input=false'
                 break
            case "apply":
                echo "Running your choice of (this will require your confirmation first): ${params.action}"
                    try {
                        if ("${params.action}" == 'apply'){
                            sh 'terraform plan -out=plan.out'
                                timeout(time: 30, unit:'MINUTES') {
                                    input (message: "Apply Plan?", ok: 'Apply')
                                    //         sh 'terraform apply plan.out'
                                             sh 'terraform show'
                                             sh 'terraform state list'
                                    //         sh 'echo  =================================' 
                                           sh 'terraform state rm aws_transfer_user.transfer_server_user'
                                           sh 'terraform state rm aws_transfer_ssh_key.transfer_server_ssh_key'
                                           sh 'terraform  state list'
                                           sh 'terraform  show'
                                  //        sh 'terraform state rm aws_transfer_user.transfer_server_user s-ad41f033819941279/user1'
                                  //       sh 'terraform state rm aws_transfer_ssh_key.transfer_server_ssh_key key-58577206171a4c178'
                                //      sh 'terraform import aws_transfer_user.transfer_server_user[3] s-ad41f033819941279/pqin'
                                 //     sh 'terraform import aws_transfer_user.transfer_server_user[4] s-ad41f033819941279/user3'
                                 //     sh 'terraform import aws_transfer_ssh_key.transfer_server_ssh_key[3] s-ad41f033819941279/pqin/key-8362aedd95e048ba8'
                                 //     sh 'terraform import aws_transfer_ssh_key.transfer_server_ssh_key[4] s-ad41f033819941279/user3/key-5e3b378d6d6542218'
                                //        sh 'terraform destroy -auto-approve'
                                         return true
                                }
                        } else {
                            return false
                        }
                    }
                    catch (err) {
                        currentBuild.result = 'FAILURE'
                        return false
                    }
                    break
            default:
                println("This is an error")
                break
        }
    }
}
