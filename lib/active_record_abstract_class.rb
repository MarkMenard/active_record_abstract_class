require 'active_record_abstract_class/version'

module ActiveRecordAbstractClass
  module ClassMethods
    def abstract?
      @abstract == true
    end
  end

  def self.included (base)
    base.module_eval do
      before_save :do_not_persist_abstract_class
    end

    base.extend(ClassMethods)

    base.instance_eval do
      @abstract = true
    end
  end

  def do_not_persist_abstract_class
    raise "#{self.class.name} is an abstract class and can't be persisted" if self.class.abstract?
  end
end