class ArtistsController < InheritedResources::Base

  private

    def artist_params
      params.require(:artist).permit(:first_name, :last_name, :genre, :instrument, :location, :stage_name)
    end
end

