# This migration comes from qwester (originally 20130318102537)
class AddPresentationToRuleSets < ActiveRecord::Migration[6.0]
  def change
    add_column :qwester_rule_sets, :presentation, :string
    add_column :qwester_presentations, :default, :boolean
  end
end
