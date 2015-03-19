class BandsController < InheritedResources::Base

  private

    def band_params
      params.require(:band).permit(:band_name, :genre)
    end
end

