Feature: Do an exam
	As a student
	I want to try an exam
	In order to get high score in the real exam
	
	Scenario: Select the exam
		Given There are some exam: "Đề 1" , "Đề 2",...
		When I click on "Đề 1"
		Then I should see the content of "Đề 1": "Câu 1: C4H8 có bao nhiêu đồng phân? "
		
	Scenario: Select the answer
		Given Each question : "Câu 1: C4H8 có bao nhiêu đồng phân?" There are 4 answers "A.3  B.4  C.5  D.6"
		When I click in "C.5"
		Then I should see the color of this answer is changed
		And I click "Tiếp theo"
		Then I should see "Câu 2:..."
		
	Scenario: Submit
		Given I have done all questions
		And I see "Nộp bài" bottom
		When I click on "Nộp bài"
		Then I should see the result of my exam: the number of correct answers/ total
		
