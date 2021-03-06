# frozen_string_literal: true

class BackupMetadata < ActiveRecord::Base
  def self.value_for(name)
    where(name: name).pluck(:value).first
  end
end

# == Schema Information
#
# Table name: backup_metadata
#
#  id    :bigint           not null, primary key
#  name  :string           not null
#  value :string
#
