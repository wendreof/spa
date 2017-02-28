# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160811032441) do

  create_table "activities", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "teacher_id",  limit: 4
  end

  add_index "activities", ["teacher_id"], name: "index_activities_on_teacher_id", using: :btree

  create_table "activity_sugestions", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "attitudinal_skills", force: :cascade do |t|
    t.string   "tipo",        limit: 255
    t.string   "Description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "desctipion",       limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.text     "long_description", limit: 65535
  end

  create_table "course_module_study_units", force: :cascade do |t|
    t.integer  "course_module_id", limit: 4
    t.integer  "study_unit_id",    limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "course_module_study_units", ["course_module_id"], name: "index_course_module_study_units_on_course_module_id", using: :btree
  add_index "course_module_study_units", ["study_unit_id"], name: "index_course_module_study_units_on_study_unit_id", using: :btree

  create_table "course_modules", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "course_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "course_modules", ["course_id"], name: "index_course_modules_on_course_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "evidences", force: :cascade do |t|
    t.string   "description",          limit: 255
    t.string   "long_description",     limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "attitudinal_skill_id", limit: 4
  end

  add_index "evidences", ["attitudinal_skill_id"], name: "index_evidences_on_attitudinal_skill_id", using: :btree

  create_table "generating_theme_sugestions", force: :cascade do |t|
    t.string   "description",      limit: 255
    t.string   "long_description", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "generating_themes", force: :cascade do |t|
    t.string   "description",      limit: 255
    t.text     "long_description", limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "teacher_id",       limit: 4
  end

  add_index "generating_themes", ["teacher_id"], name: "index_generating_themes_on_teacher_id", using: :btree

  create_table "meeting_activities", force: :cascade do |t|
    t.integer  "meeting_id",  limit: 4
    t.integer  "activity_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "meeting_activities", ["activity_id"], name: "index_meeting_activities_on_activity_id", using: :btree
  add_index "meeting_activities", ["meeting_id"], name: "index_meeting_activities_on_meeting_id", using: :btree

  create_table "meeting_attitudinal_skills", force: :cascade do |t|
    t.integer  "meeting_id",           limit: 4
    t.integer  "attitudinal_skill_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "meeting_attitudinal_skills", ["attitudinal_skill_id"], name: "index_meeting_attitudinal_skills_on_attitudinal_skill_id", using: :btree
  add_index "meeting_attitudinal_skills", ["meeting_id"], name: "index_meeting_attitudinal_skills_on_meeting_id", using: :btree

  create_table "meeting_evidences", force: :cascade do |t|
    t.integer  "meeting_id",  limit: 4
    t.integer  "evidence_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "meeting_evidences", ["evidence_id"], name: "index_meeting_evidences_on_evidence_id", using: :btree
  add_index "meeting_evidences", ["meeting_id"], name: "index_meeting_evidences_on_meeting_id", using: :btree

  create_table "meeting_methodologies", force: :cascade do |t|
    t.integer  "meeting_id",     limit: 4
    t.integer  "methodology_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "meeting_methodologies", ["meeting_id"], name: "index_meeting_methodologies_on_meeting_id", using: :btree
  add_index "meeting_methodologies", ["methodology_id"], name: "index_meeting_methodologies_on_methodology_id", using: :btree

  create_table "meeting_resources", force: :cascade do |t|
    t.integer  "meeting_id",  limit: 4
    t.integer  "resource_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "meeting_resources", ["meeting_id"], name: "index_meeting_resources_on_meeting_id", using: :btree
  add_index "meeting_resources", ["resource_id"], name: "index_meeting_resources_on_resource_id", using: :btree

  create_table "meeting_strategies", force: :cascade do |t|
    t.integer  "meeting_id",  limit: 4
    t.integer  "strategy_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "meeting_strategies", ["meeting_id"], name: "index_meeting_strategies_on_meeting_id", using: :btree
  add_index "meeting_strategies", ["strategy_id"], name: "index_meeting_strategies_on_strategy_id", using: :btree

  create_table "meeting_verbs", force: :cascade do |t|
    t.integer  "meeting_id", limit: 4
    t.integer  "verb_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "meeting_verbs", ["meeting_id"], name: "index_meeting_verbs_on_meeting_id", using: :btree
  add_index "meeting_verbs", ["verb_id"], name: "index_meeting_verbs_on_verb_id", using: :btree

  create_table "meetings", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.integer  "generating_theme_id", limit: 4
    t.integer  "workload",            limit: 4
    t.integer  "specific_skill_id",   limit: 4
    t.integer  "category_id",         limit: 4
    t.text     "know_more",           limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "plane_classroom_id",  limit: 4
    t.text     "technical_skill",     limit: 65535
  end

  add_index "meetings", ["category_id"], name: "index_meetings_on_category_id", using: :btree
  add_index "meetings", ["generating_theme_id"], name: "index_meetings_on_generating_theme_id", using: :btree
  add_index "meetings", ["plane_classroom_id"], name: "index_meetings_on_plane_classroom_id", using: :btree
  add_index "meetings", ["specific_skill_id"], name: "index_meetings_on_specific_skill_id", using: :btree

  create_table "methodologies", force: :cascade do |t|
    t.string   "description",      limit: 255
    t.text     "long_description", limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "plane_classrooms", force: :cascade do |t|
    t.integer  "teacher_id",                limit: 4
    t.integer  "generating_theme_id",       limit: 4
    t.integer  "year",                      limit: 4
    t.string   "semester",                  limit: 255
    t.integer  "course_id",                 limit: 4
    t.integer  "course_module_id",          limit: 4
    t.integer  "study_unit_id",             limit: 4
    t.integer  "workload",                  limit: 4
    t.text     "menu",                      limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.text     "interdisciplinary_project", limit: 65535
    t.text     "basic_bibliography",        limit: 65535
    t.text     "additional_bibliography",   limit: 65535
  end

  add_index "plane_classrooms", ["course_id"], name: "index_plane_classrooms_on_course_id", using: :btree
  add_index "plane_classrooms", ["course_module_id"], name: "index_plane_classrooms_on_course_module_id", using: :btree
  add_index "plane_classrooms", ["generating_theme_id"], name: "index_plane_classrooms_on_generating_theme_id", using: :btree
  add_index "plane_classrooms", ["study_unit_id"], name: "index_plane_classrooms_on_study_unit_id", using: :btree
  add_index "plane_classrooms", ["teacher_id"], name: "index_plane_classrooms_on_teacher_id", using: :btree

  create_table "relationships", force: :cascade do |t|
    t.integer  "attitudinal_skill_id",  limit: 4
    t.integer  "specific_skill_id",     limit: 4
    t.integer  "activity_id",           limit: 4
    t.integer  "attitudinal_skills_id", limit: 4
    t.integer  "specific_skills_id",    limit: 4
    t.integer  "verbs_id",              limit: 4
    t.integer  "activities_id",         limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "category_id",           limit: 4
  end

  add_index "relationships", ["activities_id"], name: "index_relationships_on_activities_id", using: :btree
  add_index "relationships", ["activity_id"], name: "fk_rails_9d95d61872", using: :btree
  add_index "relationships", ["attitudinal_skill_id"], name: "fk_rails_0f610529b5", using: :btree
  add_index "relationships", ["attitudinal_skills_id"], name: "index_relationships_on_attitudinal_skills_id", using: :btree
  add_index "relationships", ["category_id"], name: "index_relationships_on_category_id", using: :btree
  add_index "relationships", ["specific_skill_id"], name: "fk_rails_12046f6804", using: :btree
  add_index "relationships", ["specific_skills_id"], name: "index_relationships_on_specific_skills_id", using: :btree
  add_index "relationships", ["verbs_id"], name: "index_relationships_on_verbs_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "specific_skills", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "specific_technical_competences", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "strategies", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "strategies", ["category_id"], name: "index_strategies_on_category_id", using: :btree

  create_table "study_units", force: :cascade do |t|
    t.string   "description",      limit: 255
    t.integer  "course_module_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "study_units", ["course_module_id"], name: "index_study_units_on_course_module_id", using: :btree

  create_table "teacher_activities", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "meeting_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "teacher_activities", ["meeting_id"], name: "index_teacher_activities_on_meeting_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "registration", limit: 255
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "verbs", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "verbs", ["category_id"], name: "index_verbs_on_category_id", using: :btree

  add_foreign_key "activities", "teachers"
  add_foreign_key "course_module_study_units", "course_modules"
  add_foreign_key "course_module_study_units", "study_units"
  add_foreign_key "course_modules", "courses"
  add_foreign_key "evidences", "attitudinal_skills"
  add_foreign_key "generating_themes", "teachers"
  add_foreign_key "meeting_activities", "activities"
  add_foreign_key "meeting_activities", "meetings"
  add_foreign_key "meeting_attitudinal_skills", "attitudinal_skills"
  add_foreign_key "meeting_attitudinal_skills", "meetings"
  add_foreign_key "meeting_evidences", "evidences"
  add_foreign_key "meeting_evidences", "meetings"
  add_foreign_key "meeting_methodologies", "meetings"
  add_foreign_key "meeting_methodologies", "methodologies"
  add_foreign_key "meeting_resources", "meetings"
  add_foreign_key "meeting_resources", "resources"
  add_foreign_key "meeting_strategies", "meetings"
  add_foreign_key "meeting_strategies", "strategies"
  add_foreign_key "meeting_verbs", "meetings"
  add_foreign_key "meeting_verbs", "verbs"
  add_foreign_key "meetings", "categories"
  add_foreign_key "meetings", "generating_themes"
  add_foreign_key "meetings", "plane_classrooms"
  add_foreign_key "meetings", "specific_skills"
  add_foreign_key "plane_classrooms", "course_modules"
  add_foreign_key "plane_classrooms", "courses"
  add_foreign_key "plane_classrooms", "generating_themes"
  add_foreign_key "plane_classrooms", "study_units"
  add_foreign_key "plane_classrooms", "teachers"
  add_foreign_key "relationships", "activities"
  add_foreign_key "relationships", "attitudinal_skills"
  add_foreign_key "relationships", "categories"
  add_foreign_key "relationships", "specific_skills"
  add_foreign_key "strategies", "categories"
  add_foreign_key "study_units", "course_modules"
  add_foreign_key "teacher_activities", "meetings"
  add_foreign_key "verbs", "categories"
end
