
require 'rails_helper'

RSpec.describe User, :type => :model do

    describe "validations" do

        it "should confirm :email" do
            user = User.new({email: "oil", email_confirmation: "water"})
            expect(user.save).to be(false)
        end

        it "should confirm :password" do
            user = User.new({password: "apples", password_confirmation: "oranges"})
            expect(user.save).to be(false)
        end

        it "should not let someone forget to make a password" do
            user = User.new({email: "sure@okay.com", email_confirmation: "sure@okay.com"})
            expect(user.save).to be(false)
        end

        it "should not let someone forget to include an email" do
            user = User.new({password: "secret", password_confirmation: "secret"})
            expect(user.save).to be(false)
        end

        it "should require :password confirmation" do
            user = User.new({email: "maybe@iguess.com", email_confirmation: "maybe@iguess.com", passsword: "alex"})
            expect(user.save).to be(false)
        end

        it "should require :email confirmation" do
            user = User.new({email: "alex@rules.com", password: "sotired", password_confirmation: "sotired"})
            expect(user.save).to be(false)
        end

    end
end