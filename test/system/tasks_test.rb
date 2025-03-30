require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "TODOリスト"
  end

  test "should create task" do
    visit tasks_url
    click_on "タスクを登録"

    check "Done" if @task.done
    fill_in "Title", with: @task.title
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "should update Task" do
    visit edit_task_url(@task)

    fill_in "task_title", with: @task.title
    click_on "更新"
  end

  test "should destroy Task" do
    visit edit_task_url(@task)

    accept_confirm do
      click_on "削除", match: :first
    end
  end
end
