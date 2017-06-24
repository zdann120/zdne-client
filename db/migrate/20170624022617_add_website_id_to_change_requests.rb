class AddWebsiteIdToChangeRequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :change_requests, :website, foreign_key: true
  end
end
