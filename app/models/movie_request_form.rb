class MovieRequestForm
  include ActiveModel::Model

  attr_accessor :term, :attribute

  def initialize(args={})
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  def persisted?
    false
  end

end
