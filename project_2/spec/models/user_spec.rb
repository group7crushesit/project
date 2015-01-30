
require 'rails_helper'

RSpec.describe User, :type => :model do

    describe "validations" do

        it "should confirm a user :email" do
            user = User.new({email: , email_confirmation: })
            expect(user.save).to be(false)
        end

        it "should confirm a user :password" do
            user = User.new({password: , password_confirmation: })
            expect(user.save).to be(false)
        end

        it "should not create a user with a blank password" do
            user = User.new({email: , email_confirmation: })
            expect(user.save).to be(false)
        end

        it "should not create a user with a blank email" do
            user = User.new({password: , password_confirmation: })
            expect(user.save).to be(false)
        end

        it "should require :password confirmation" do
            user = User.new({email: , email_confirmation: , passsword: })
            expect(user.save).to be(false)
        end

        it "should require :email confirmation" do
            user = User.new({email: , password: , password_confirmation: })
            expect(user.save).to be(false)
        end

        it "should validate :password length to be greater than 8 characters"  do
            user = User.new({email: , password: , password_confirmation: })
            expect(user.save).to be(false)
        end
    end
end