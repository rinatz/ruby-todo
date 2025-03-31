require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h3", text: "TODOリスト"
  end

  test "should create task" do
    visit tasks_url
    click_on "追加"

    fill_in "task_title", with: @task.title
    click_on "OK"
  end

  test "should update Task" do
    visit edit_task_url(@task)

    fill_in "task_title", with: @task.title
    click_on "OK"
  end

  test "should destroy Task" do
    visit tasks_url

    accept_confirm do
      click_on "削除", match: :first
    end
  end
end
