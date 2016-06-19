require_relative "../main.rb"

module ItsTimeApi
  module Controllers
    class Model1Controller < ItsTimeApi::Main
      get '/' do
        relation = ItsTimeApi::Model::Model1.order(name: :asc).limit(15)

        if params[:term].present?
          relation = relation.where("name like ?",  params[:term].downcase.parameterize + "%")
        end

        [200, {"Content-Type" => "application/json"}, relation.to_json]
      end
    end
  end
end
