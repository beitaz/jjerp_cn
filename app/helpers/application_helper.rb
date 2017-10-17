module ApplicationHelper
  def model_name_helper
    model_name = controller_name.singularize # 获取 Model 名称
    # model = model_name.classify.constantize # 构造 Model 类
    t('activerecord.models.' + model_name)
  end

  def action_name_helper
    t(action_name)
  end
end
