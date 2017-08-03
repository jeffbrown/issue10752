package com.cabolabs

import grails.converters.JSON

class SampleController {

    def index() {
    	
    }
    def action() {
    	println params
    	render params as JSON
    }
}
