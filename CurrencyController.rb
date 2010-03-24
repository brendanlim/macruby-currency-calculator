# CurrencyController.rb
# currency
#
# Created by Brendan Lim on 3/21/10.
# Copyright 2010 Intridea, Inc. All rights reserved.

class CurrencyController < NSWindowController
  attr_accessor :current_amount
  attr_accessor :conversion_rate
  attr_accessor :converted_amount
  attr_accessor :convert_button
  attr_accessor :clear_button
  
  def awakeFromNib
    NSLog "Im awake now!"
  end
  
  def convert(sender)
    NSLog "#{sender.class}"
    amount = @current_amount.floatValue
    rate = @conversion_rate.floatValue
    @converted_amount.setFloatValue(amount*rate)
  end
  
  def clearValues(sender)
    @current_amount.setStringValue("")
    @conversion_rate.setStringValue("")
    @converted_amount.setStringValue("")
    @current_amount.selectText(@current_amount)
  end
end
