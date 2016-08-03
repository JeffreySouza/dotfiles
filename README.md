# dotfiles

##apps

    xorg
    i3   		window manager
    urxvt		terminal emulator
    feh 	    	for wallpaper
    vim 		text editor
    firefox		browser
    chromium    	dirty browser

    cousine		font		  aur: ttf-chromeos-fonts

    htop
    ranger
    screenfetch

    asciiquarium
    sl

##vim plugins
###Pathogen plugin manager
  setup
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  use
    lets you install plugins...

###vim-vinegar
  setup
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-vinegar.git
  use
    - opens netrw

###vim-surround
  setup
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-surround.git
  use
    ds Delete surroundings
        Old text                  Command     New text ~
          "Hello *world!"           ds"         Hello world!
          (123+4*56)/2              ds)         123+456/2
          <div>Yo!*</div>           dst         Yo!
    cs Change surroundings
        Old text                  Command     New text ~
          "Hello *world!"           cs"'        'Hello world!'
          "Hello *world!"           cs"<q>      <q>Hello world!</q>
          (123+4*56)/2              cs)]        [123+456]/2
          (123+4*56)/2              cs)[        [ 123+456 ]/2
          <div>Yo!*</div>           cst<p>      <p>Yo!</p>
    ys  Wrap first arg (vim motion) with second arg
        Old text                  Command     New text ~
          Hello w*orld!             ysiw)       Hello (world)!
    yss operates on current line ignoring whitespace
        Old text                  Command     New text ~
          Hello w*orld!             yssB        {Hello world!}

###vim-fugitive
  setup
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-fugitive.git
    vim -u NONE -c "helptags vim-fugitive/doc" -c q
  use
    :Git [args] run git command
    :Gcommit [args]
   .:Gpush [args]

###commentary
  setup
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-commentary.git
  use
    gc comments out target motion
    gcc comments out line
    gcgc uncomment current and adjacent comment lines
    gcu uncomment

###vim-repeat
  setup
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-repeat.git
  use
    lets . repeat plugin stuff

###vim-abolish
  setup
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-abolish.git
  use
    crs convert to snake_case
    crm convert to MixedCase
    crc convert to camelCase
    cru convert to UPERR_CASE

    :Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or}  {despe,sepa}rat{}
      in place of :iabbrev seperation separation and so on....

    :%Subvert/facilit{y,ies}/building{,s}/g
      in place of :%s/facility/building/g and so on....

###vim-sleuth
  setup
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-sleuth.git
  use
    automatically sets up tabs/spaces etc

