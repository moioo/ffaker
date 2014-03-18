# encoding: utf-8
# => author: guapolo github.com/guapolo
module  Faker
  module PhoneNumberCN
    extend ModuleUtils
    extend self

    def home_work_phone_number
      case rand(2)
      when 0 then Faker.numerify("#{country_code}-########")
      when 1 then Faker.numerify("#{country_code}-#######")
      end
    end

    def mobile_phone_number
      Faker.numerify("#{mobile_code}########")
    end

    def phone_number
      case rand(2)
      when 0 then home_work_phone_number
      when 1 then mobile_phone_number
      end
    end

    def country_code
      k(%w(0730 0731 0734 0735 010 020 0755)).rand
    end
    def mobile_code
      k(%w(130 131 132 133 135 136 137 138 139 186 188 150)).rand
    end

  end
end