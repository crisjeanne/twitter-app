require "rails_helper"

RSpec.describe "Usernames", type: :request do
    let(:user) { create(:user, username:nil) }
    before { sign_in user}

    describe "GET new" do
        it "is successful" do
            get new_usernames_path
            expect(response).to have_http_status(:success)
        end
    end

    describe "PUT create" do
        context "valid params" do
        it "updates the username" do
            expect do
                put usernames_path(user), params: {
                    user: {
                        username: "new username"
                    }
                }
            end.to change { user.reload.username }.from(nil).to("new username")
            expect(response).to redirect_to dashboard_path
        end
    end

    context "invalid params" do
        it "updates the username" do
            expect do
                put usernames_path(user), params: {
                    user: {
                        username: ""
                    }
                }
                end.not_to change { user.reload.username }
                expect(response).to redirect_to(new_usernames_path)
            end

        end
    end
end