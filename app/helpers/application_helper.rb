module ApplicationHelper

def header(text)
  content_for(:header) { text.to_s }
end

# Returns the propper bootstrap alert classes for each type of flash message.
# @see For method usage: https://coderwall.com/p/jzofog/ruby-on-rails-flash-messages-with-bootstrap
# @see For custom flash types: http://blog.remarkablelabs.com/2012/12/register-your-own-flash-types-rails-4-countdown-to-2013
#
# @note This fn() is not currently used because `alert_box()` from the BS library works so
#       concisely.  However, I'm not sure I like the way alert_box behaves so I'll keep this
#       for now.  Specifically, I'm not sure alert_box maps the flash keys to all the correct
#       bootstrap alert types (success, error, etc).
#
# @param level [String] The flash type (eg :notice, :alert, etc)
def get_bootstrap_alert_classes(level)
  case level
    when 'success' then 'alert alert-success'
    when 'notice' then 'alert alert-info'
    when 'alert' then 'alert alert-warning'
    when 'error' then 'alert alert-error'
  end
end

end
