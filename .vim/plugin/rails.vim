"" ---------------
"" rails.vim
"" ---------------
"command! Remigrate :Rake db:drop | Rake db:create | Rake db:migrate | Rake test:prepare
"
"" Add custom commands for Rails.vim
"" Thanks to http://git.io/_cBVeA and http://git.io/xIKnCw
"let g:rails_projections = {
"      \ 'app/models/*.rb': {'keywords': 'validates_conditional'},
"      \ 'db/seeds/*.rb': {'command': 'seeds'},
"      \ 'db/seeds.rb': {'command': 'seeds'},
"      \ 'spec/factories.rb': {'command': 'factory'},
"      \ 'spec/factories/*_factory.rb': {
"      \   'command': 'factory',
"      \   'affinity': 'model',
"      \   'alternate': 'app/models/%s.rb',
"      \   'related': 'db/schema.rb#%p',
"      \   'test': 'spec/models/%s_spec.rb',
"      \   'template': "FactoryGirl.define do\n  factory :%s do\n  end\nend",
"      \   'keywords': 'factory sequence'
"      \ },
"      \ 'spec/factories/*.rb': {
"      \   'command': 'factory',
"      \   'affinity': 'collection',
"      \   'alternate': 'app/models/%o.rb',
"      \   'related': 'db/schema.rb#%s',
"      \   'test': 'spec/models/%o_spec.rb',
"      \   'template': "FactoryGirl.define do\n  factory :%o do\n  end\nend",
"      \   'keywords': 'factory sequence'
"      \ },
"      \ 'spec/fabricators/*_fabricator.rb': {
"      \   'command': 'fabricator',
"      \   'affinity': 'model',
"      \   'alternate': 'app/models/%s.rb',
"      \   'related': 'db/schema.rb#%p',
"      \   'test': 'spec/models/%s_spec.rb',
"      \   'template': "Fabricator(:%s) do\nend",
"      \   'keywords': 'sequence initialize_with on_init transient after_build before_validation after_validation before_save before_create after_create after_save'
"      \ },
"      \ 'spec/support/*.rb': {'command': 'support'},
"      \ 'features/*.feature': {'command': 'feature'},
"      \ 'features/step_definitions/*_steps.rb': {'command': 'steps'},
"      \ 'features/support/*.rb': {'command': 'support'}}
"
"


