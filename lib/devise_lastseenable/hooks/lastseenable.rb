Warden::Manager.after_set_user do |record, warden, opts|
  if record.respond_to?(:stamp!)
    record.stamp!
  end
end

Warden::Manager.before_logout do |record, warden, opts|
  if record.respond_to?(:stamp_logout!)
    record.stamp_logout!
  end
end