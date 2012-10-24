load 'ar.rb'

def gets_yes_no(question_prompt)
  begin
    print question_prompt + " (y/n): "
  end until ((response = gets.chomp) == 'y' || response == 'n')
  response == 'y'
end
