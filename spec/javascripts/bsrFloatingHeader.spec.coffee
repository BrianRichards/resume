describe "bsrFloatingHeader", ->
	beforeEach ->
		jasmine.getFixtures().set("<div id='headerDiv'>\n" +
				"Howdy\n"+
				"<div>Other Content</div>"+
				"</div><div style='height:2000px'>Content</div>")

	describe "adding inner div", ->
		headerDiv = null
		headerDivContents = null
		headerPlugin = null

		beforeEach ->
			headerDiv = $("#headerDiv")
			headerDivContents = $("#headerDiv").html()
			headerPlugin = $("#headerDiv").bsrFloatingHeader()

		it "should add a child div with a class of 'bsrFloatingInner'", ->
			expect(headerDiv).toContain(".bsrFloatingInner")

		it "should add only one 'bsrFloatingInner' div", ->
			expect($(".bsrFloatingInner").length).toBe(1)

		it "should place the existing div contents into the 'bsrFloatingInner' div", ->
			expect($(".bsrFloatingInner").html()).toBe(headerDivContents)