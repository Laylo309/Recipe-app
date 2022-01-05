module ApplicationHelper
  def flash_class(level)
    bootstrap_alert_class = {
      'success' => 'is-success',
      'error' => 'is-danger',
      'notice' => 'is-info',
      'alert' => 'is-danger',
      'warn' => 'is-warning'
    }
    bootstrap_alert_class[level]
  end
end
