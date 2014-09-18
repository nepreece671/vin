#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "CD & Vinyl Order Confirmation", mail.subject
    assert_equal ["nicpreece@yahoo.com"], mail.to
    assert_equal ["lionel.vinyl@vinylla.com"], mail.from
    assert_match /1 x Pink Floyd - Dark Side of the Moon/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "CD & Vinyl Order Confirmation", mail.subject
    assert_equal ["nicpreece@yahoo.com"], mail.to
    assert_equal ["lionel.vinyl@vinylla.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/,
      mail.body.encoded
  end

end
