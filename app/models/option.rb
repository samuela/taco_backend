class Option < ActiveRecord::Base
  attr_accessible :t1, :t10, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t2, :t20, :t21, :t22, :t23, :t24, :t25, :t26, :t27, :t28, :t29, :t3, :t30, :t4, :t5, :t6, :t7, :t8, :t9
  belongs_to :venue
end
