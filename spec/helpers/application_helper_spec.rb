require 'rails_helper'

describe ApplicationHelper, type: :helper do

    describe "get_bootstrap_alert_classes" do

      before(:each) { flash.clear }

      it "maps :success to 'alert-success'" do
        flash[:success] = ''
        expect(get_bootstrap_alert_classes(flash.keys.first) ).to include('alert-success')
      end

      it "maps :notice to 'alert-info'" do
        flash[:notice] = ''
        expect(get_bootstrap_alert_classes(flash.keys.first) ).to include('alert-info')
      end

      it "maps :alert to 'alert-warning'" do
        flash[:alert] = ''
        expect(get_bootstrap_alert_classes(flash.keys.first) ).to include('alert-warning')
      end

      it "maps :error to 'alert-error'" do
        flash[:error] = ''
        expect(get_bootstrap_alert_classes(flash.keys.first) ).to include('alert-error')
      end

    end

end
