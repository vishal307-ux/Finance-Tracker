require "rails_helper"

RSpec.describe User, type: :model do 
	# context 'validation test' do
 #      it "ensure  first_name presence" do
 #      user = User.new(email: "vishalgmail.com",last_name: "My Awesome Idea Name").save # creating a new idea 'instance'
 #      expect(user).to eq(false) # this is our expectation
 #    end

 #     it "ensure  last_name presence" do
 #      user = User.new(email: "vishalgmail.com",first_name: "My Awesome Idea Name").save # creating a new idea 'instance'
 #      expect(user).to eq(false) # this is our expectation
 #    end
    
 #     it "ensure  email presence" do
 #      user = User.new(first_name: "vishalgmail.com",last_name: "My Awesome Idea Name").save # creating a new idea 'instance'
 #      expect(user).to eq(false) # this is our expectation
 #    end

 #    it "should save" do
 #      user = User.new(email: "sample@gmail.com ",first_name: "vishal",last_name: "Gupta").save # creating a new idea 'instance'
 #      expect(user).to eq(false) # this is our expectation
 #    end
 #    end
 #    context 'scope test' do
 #    	let(:params) {{ first_name: 'First' ,last_name: 'Last', email: 'vishalguptav307@gmail.com'}}
 #         before(:each) do
 #         User.new(params).save
 #         User.new(params).save
 #         User.new(params.merge(active: true)).save
 #         User.new(params.merge(active: true)).save
 #         User.new(params.merge(active: true)).save
 #    end

 #    it 'should return active users' do
 #    	expect(User.active_users.size).to eq(3)
 #    end

 #    it 'should return inactive users' do
 #    	expect(User.active_users.size).to eq(2)
 #    end  

 describe "Associations"  do
 	it {should has_many(:stocks).through(:user_stocks)}
 end

 describe "Validations" do
    subject { FactoryBot.create(:user) }

    it { should validate_presence_of(:first_name) }
    it { should validate_uniqueness_of(:first_name).case_insensitive }
  end
 
describe '#posts' do
  before do
    let(:user) { User.create(some_attribute: 'some_value') }
    let(:user_stocks) { UserStock.create(user: user, some_attribute: 'some_value') }
  end

  it "tag should do something" do
    expect(user.stocks).to eq('something')
  end

  it "tagging should do something" do
    expect(userstock.something).to eq('something')
  end




  end
end