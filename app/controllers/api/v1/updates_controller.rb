module Api
  module V1
    class UpdatesController < ApiController
      ON_PODCAST_MENTION_CHARACTER = "@".freeze

      def timeline
      end

      def index
        @updates = Update.all.order "created_at desc"
        render json: @updates
      end

      def create
        podcast = find_podcast_from update: params[:body]
        binding.pry
        if podcast
          podcast.updates.create! body: params[:body], user_id: current_user.id
          binding.pry
        else
          binding.pry
          @update = Update.create! body: params[:body], user_id: current_user.id
        end
        render json: @update
      end

      private
      def update_params
        params.require(:update).permit :body, :title
      end

      # TODO: Allow multiple podcast @ mentions per update
      def find_podcast_from(update:)
        title = update.split ON_PODCAST_MENTION_CHARACTER
        Podcast.find_by(title: title) if title and title[1]
      end
    end
  end
end