require './lib/student'

RSpec.describe do

  it 'exists and has attributes' do

    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_an_instance_of(Student)
    expect(student.name).to eq('Morgan')
    expect(student.age).to eq(21)
  end

  it 'can take in scores and calculate the average' do

    student = Student.new({name: "Morgan", age: 21})

    expect(student.scores).to eq([])

    student.log_score(89)
    student.log_score(78)

    expect(student.scores).to eq([89, 78])
    expect(student.grade).to eq(83.5)
  end
end
