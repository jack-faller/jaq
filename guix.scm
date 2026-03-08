(define-module (jaq)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) :prefix license:)
  #:export (jaq lookup-cargo-inputs))

(define rust-aho-corasick-1.1.4
  (crate-source "aho-corasick" "1.1.4"
                "00a32wb2h07im3skkikc495jvncf62jl6s96vwc7bhi70h9imlyx"))

(define rust-arbitrary-1.4.2
  (crate-source "arbitrary" "1.4.2"
                "1wcbi4x7i3lzcrkjda4810nqv03lpmvfhb0a85xrq1mbqjikdl63"))

(define rust-arraydeque-0.5.1
  (crate-source "arraydeque" "0.5.1"
                "0dn2xdfg3rkiqsh8a6achnmvf5nf11xk33xgjzpksliab4yjx43x"))

(define rust-autocfg-1.5.0
  (crate-source "autocfg" "1.5.0"
                "1s77f98id9l4af4alklmzq46f21c980v13z2r1pcxx6bqgw0d1n0"))

(define rust-base64-0.22.1
  (crate-source "base64" "0.22.1"
                "1imqzgh7bxcikp5vx3shqvw9j09g9ly0xr0jma0q66i52r7jbcvj"))

(define rust-bitflags-2.10.0
  (crate-source "bitflags" "2.10.0"
                "1lqxwc3625lcjrjm5vygban9v8a6dlxisp1aqylibiaw52si4bl1"))

(define rust-bstr-1.10.0
  (crate-source "bstr" "1.10.0"
                "036wwrchd5gq3q4k6w1j2bfl2bk2ff8c0dsa9y7w7aw7nf7knwj0"))

(define rust-bumpalo-3.14.0
  (crate-source "bumpalo" "3.14.0"
                "1v4arnv9kwk54v5d0qqpv4vyw2sgr660nk0w3apzixi1cm3yfc3z"))

(define rust-bytes-1.10.1
  (crate-source "bytes" "1.10.1"
                "0smd4wi2yrhp5pmq571yiaqx84bjqlm1ixqhnvfwzzc6pqkn26yp"))

(define rust-cc-1.2.44
  (crate-source "cc" "1.2.44"
                "1wxhvq65g8j0acx5pk9ckllnyhf940z4k0n35l916gdymb3illip"))

(define rust-cfg-if-1.0.4
  (crate-source "cfg-if" "1.0.4"
                "008q28ajc546z5p2hcwdnckmg0hia7rnx52fni04bwqkzyrghc4k"))

(define rust-ciborium-io-0.2.2
  (crate-source "ciborium-io" "0.2.2"
                "0my7s5g24hvp1rs1zd1cxapz94inrvqpdf1rslrvxj8618gfmbq5"))

(define rust-ciborium-ll-0.2.2
  (crate-source "ciborium-ll" "0.2.2"
                "1n8g4j5rwkfs3rzfi6g1p7ngmz6m5yxsksryzf5k72ll7mjknrjp"))

(define rust-clipboard-win-5.4.1
  (crate-source "clipboard-win" "5.4.1"
                "1m44gqy11rq1ww7jls86ppif98v6kv2wkwk8p17is86zsdq3gq5x"))

(define rust-codesnake-0.2.1
  (crate-source "codesnake" "0.2.1"
                "0992whdgg1lhh6403gca4rlnayzhxnrqkiwiqbsfqs6ysgvgf192"))

(define rust-console-log-1.0.0
  (crate-source "console_log" "1.0.0"
                "03rwzvpg384y68j6hxm4h1bhzi7xcc5jdari8hxlvgzdwi0fv2my"))

(define rust-crunchy-0.2.4
  (crate-source "crunchy" "0.2.4"
                "1mbp5navim2qr3x48lyvadqblcxc1dm0lqr0swrkkwy2qblvw3s6"))

(define rust-csv-1.4.0
  (crate-source "csv" "1.4.0"
                "0f7r2ip0rbi7k377c3xmsh9xd69sillffhpfmbgnvz3yrxl9vkaj"))

(define rust-csv-core-0.1.13
  (crate-source "csv-core" "0.1.13"
                "10lppd3fdb1i5npgx9xqjs5mjmy2qbdi8n16i48lg03ak4k3qjkh"))

(define rust-dirs-6.0.0
  (crate-source "dirs" "6.0.0"
                "0knfikii29761g22pwfrb8d0nqpbgw77sni9h2224haisyaams63"))

(define rust-dirs-sys-0.5.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "dirs-sys" "0.5.0"
                "1aqzpgq6ampza6v012gm2dppx9k35cdycbj54808ksbys9k366p0"))

(define rust-dyn-clone-1.0.20
  (crate-source "dyn-clone" "1.0.20"
                "0m956cxcg8v2n8kmz6xs5zl13k2fak3zkapzfzzp7pxih6hix26h"))

(define rust-env-logger-0.10.2
  (crate-source "env_logger" "0.10.2"
                "1005v71kay9kbz1d5907l0y7vh9qn2fqsp2yfgb8bjvin6m0bm2c"))

(define rust-equivalent-1.0.2
  (crate-source "equivalent" "1.0.2"
                "03swzqznragy8n0x31lqc78g2af054jwivp7lkrbrc0khz74lyl7"))

(define rust-errno-0.3.14
  (crate-source "errno" "0.3.14"
                "1szgccmh8vgryqyadg8xd58mnwwicf39zmin3bsn63df2wbbgjir"))

(define rust-error-code-3.3.2
  (crate-source "error-code" "3.3.2"
                "0nacxm9xr3s1rwd6fabk3qm89fyglahmbi4m512y0hr8ym6dz8ny"))

(define rust-fastrand-2.3.0
  (crate-source "fastrand" "2.3.0"
                "1ghiahsw1jd68df895cy5h3gzwk30hndidn3b682zmshpgmrx41p"))

(define rust-fd-lock-4.0.4
  (crate-source "fd-lock" "4.0.4"
                "0y5a22zaqns06slndm64gjdx983i6b4l4ks895rxznnn4bv2zs8c"))

(define rust-find-msvc-tools-0.1.4
  (crate-source "find-msvc-tools" "0.1.4"
                "09x1sfinrz86bkm6i2d85lpsfnxn0w797g5zisv1nwhaz1w1h1aj"))

(define rust-foldhash-0.1.5
  (crate-source "foldhash" "0.1.5"
                "1wisr1xlc2bj7hk4rgkcjkz3j2x4dhd1h9lwk7mj8p71qpdgbi6r"))

(define rust-getrandom-0.2.16
  (crate-source "getrandom" "0.2.16"
                "14l5aaia20cc6cc08xdlhrzmfcylmrnprwnna20lqf746pqzjprk"))

(define rust-getrandom-0.3.3
  (crate-source "getrandom" "0.3.3"
                "1x6jl875zp6b2b6qp9ghc84b0l76bvng2lvm8zfcmwjl7rb5w516"))

(define rust-half-2.4.1
  (crate-source "half" "2.4.1"
                "123q4zzw1x4309961i69igzd1wb7pj04aaii3kwasrz3599qrl3d"))

(define rust-hashbrown-0.15.4
  (crate-source "hashbrown" "0.15.4"
                "1mg045sm1nm00cwjm7ndi80hcmmv1v3z7gnapxyhd9qxc62sqwar"))

(define rust-hashlink-0.10.0
  (crate-source "hashlink" "0.10.0"
                "1h8lzvnl9qxi3zyagivzz2p1hp6shgddfmccyf6jv7s1cdicz0kk"))

(define rust-hifijson-0.5.0
  (crate-source "hifijson" "0.5.0"
                "0kkmxadan76mqys24frw9s50bi02f25mjmsq5zrycwfgk9s04914"))

(define rust-indexmap-2.10.0
  (crate-source "indexmap" "2.10.0"
                "0qd6g26gxzl6dbf132w48fa8rr95glly3jhbk90i29726d9xhk7y"))

(define rust-itoa-1.0.15
  (crate-source "itoa" "1.0.15"
                "0b4fj9kz54dr3wam0vprjwgygvycyw8r0qwg7vp19ly8b2w16psa"))

(define rust-jiff-0.2.15
  (crate-source "jiff" "0.2.15"
                "0jby6kbs2ra33ji0rx4swcp66jzmcvgszc5v4izwfsgbn6w967xy"))

(define rust-jiff-static-0.2.15
  (crate-source "jiff-static" "0.2.15"
                "1d4l4pvlhz3w487gyhnzvagpbparspv4c8f35qk6g5w9zx8k8d03"))

(define rust-jiff-tzdb-0.1.4
  (crate-source "jiff-tzdb" "0.1.4"
                "09350bna4vxdn2fv7gd08ay41llkflmfyvpx5d6l088axc2kfa61"))

(define rust-jiff-tzdb-platform-0.1.3
  (crate-source "jiff-tzdb-platform" "0.1.3"
                "1s1ja692wyhbv7f60mc0x90h7kn1pv65xkqi2y4imarbmilmlnl7"))

(define rust-js-sys-0.3.82
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "js-sys" "0.3.82"
                "0rcfkz7r28r01a8m6n2q13aglm44q5g6gzsw5nmjmninrk4fw4dh"))

(define rust-libc-0.2.177
  (crate-source "libc" "0.2.177"
                "0xjrn69cywaii1iq2lib201bhlvan7czmrm604h5qcm28yps4x18"))

(define rust-libm-0.2.15
  (crate-source "libm" "0.2.15"
                "1plpzf0p829viazdj57yw5dhmlr8ywf3apayxc2f2bq5a6mvryzr"))

(define rust-libmimalloc-sys-0.1.44
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libmimalloc-sys" "0.1.44"
                "0w4q14nfpvwa8q4ygz72syd1cv3rj4nmhz1mqxmzr7gj43n4yzv6"))

(define rust-libredox-0.1.10
  (crate-source "libredox" "0.1.10"
                "1jswil4ai90s4rh91fg8580x8nikni1zl3wnch4h01nvidqpwvs1"))

(define rust-linux-raw-sys-0.11.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.11.0"
                "0fghx0nn8nvbz5yzgizfcwd6ap2pislp68j8c1bwyr6sacxkq7fz"))

(define rust-log-0.4.28
  (crate-source "log" "0.4.28"
                "0cklpzrpxafbaq1nyxarhnmcw9z3xcjrad3ch55mmr58xw2ha21l"))

(define rust-memchr-2.7.6
  (crate-source "memchr" "2.7.6"
                "0wy29kf6pb4fbhfksjbs05jy2f32r2f3r1ga6qkmpz31k79h0azm"))

(define rust-memmap2-0.9.9
  (crate-source "memmap2" "0.9.9"
                "146lfx0mpib44wvws6hibahm4h2w867bzwsc6zhmi9p0l3j36hbl"))

(define rust-mimalloc-0.1.48
  (crate-source "mimalloc" "0.1.48"
                "1n2gi51zb6jhr2d154sisymgxhyr58cvkjwb53pz8x2cnsj6dvp1"))

(define rust-nix-0.27.1
  (crate-source "nix" "0.27.1"
                "0ly0kkmij5f0sqz35lx9czlbk6zpihb7yh1bsy4irzwfd2f4xc1f"))

(define rust-num-bigint-0.4.6
  (crate-source "num-bigint" "0.4.6"
                "1f903zd33i6hkjpsgwhqwi2wffnvkxbn6rv4mkgcjcqi7xr4zr55"))

(define rust-num-integer-0.1.46
  (crate-source "num-integer" "0.1.46"
                "13w5g54a9184cqlbsq80rnxw4jj4s0d8wv75jsq5r2lms8gncsbr"))

(define rust-num-traits-0.2.19
  (crate-source "num-traits" "0.2.19"
                "0h984rhdkkqd4ny9cif7y2azl3xdfb7768hb9irhpsch4q3gq787"))

(define rust-once-cell-1.21.3
  (crate-source "once_cell" "1.21.3"
                "0b9x77lb9f1j6nqgf5aka4s2qj0nly176bpbrv6f9iakk5ff3xa2"))

(define rust-option-ext-0.2.0
  (crate-source "option-ext" "0.2.0"
                "0zbf7cx8ib99frnlanpyikm1bx8qn8x602sw1n7bg6p9x94lyx04"))

(define rust-portable-atomic-1.11.1
  (crate-source "portable-atomic" "1.11.1"
                "10s4cx9y3jvw0idip09ar52s2kymq8rq9a668f793shn1ar6fhpq"))

(define rust-portable-atomic-util-0.2.4
  (crate-source "portable-atomic-util" "0.2.4"
                "01rmx1li07ixsx3sqg2bxqrkzk7b5n8pibwwf2589ms0s3cg18nq"))

(define rust-proc-macro2-1.0.103
  (crate-source "proc-macro2" "1.0.103"
                "1s29bz20xl2qk5ffs2mbdqknaj43ri673dz86axdbf47xz25psay"))

(define rust-quote-1.0.41
  (crate-source "quote" "1.0.41"
                "1lg108nb57lwbqlnpsii89cchk6i8pkcvrv88xh1p7a9gdz7c9ff"))

(define rust-r-efi-5.3.0
  (crate-source "r-efi" "5.3.0"
                "03sbfm3g7myvzyylff6qaxk4z6fy76yv860yy66jiswc2m6b7kb9"))

(define rust-redox-users-0.5.2
  (crate-source "redox_users" "0.5.2"
                "1b17q7gf7w8b1vvl53bxna24xl983yn7bd00gfbii74bcg30irm4"))

(define rust-regex-automata-0.4.13
  (crate-source "regex-automata" "0.4.13"
                "070z0j23pjfidqz0z89id1fca4p572wxpcr20a0qsv68bbrclxjj"))

(define rust-regex-bites-0.1.6
  (crate-source "regex-bites" "0.1.6"
                "04g2681nfy806pm3kjf8qrfb31xfjq45ai8wjihr7nmzl0pmm8dn"))

(define rust-rustix-1.1.2
  (crate-source "rustix" "1.1.2"
                "0gpz343xfzx16x82s1x336n0kr49j02cvhgxdvaq86jmqnigh5fd"))

(define rust-rustversion-1.0.22
  (crate-source "rustversion" "1.0.22"
                "0vfl70jhv72scd9rfqgr2n11m5i9l1acnk684m2w83w0zbqdx75k"))

(define rust-rustyline-13.0.0
  (crate-source "rustyline" "13.0.0"
                "11mywskk2jcxhanlsgzza5yx6ywpdlzr64qhbgpsx45clj1xd8h2"))

(define rust-ryu-1.0.20
  (crate-source "ryu" "1.0.20"
                "07s855l8sb333h6bpn24pka5sp7hjk2w667xy6a0khkf6sqv5lr8"))

(define rust-saphyr-parser-0.0.6
  (crate-source "saphyr-parser" "0.0.6"
                "1xvadmva2dkvngglzv5wd8ji9yvwz4lfq9b3838qa6bbkysp3dsg"))

(define rust-self-cell-1.2.1
  (crate-source "self_cell" "1.2.1"
                "0czb22p9c35lyy5r2kh82qyclqmc3l2xw7mp454xnzjp8chzihhn"))

(define rust-serde-1.0.228
  (crate-source "serde" "1.0.228"
                "17mf4hhjxv5m90g42wmlbc61hdhlm6j9hwfkpcnd72rpgzm993ls"))

(define rust-serde-core-1.0.228
  (crate-source "serde_core" "1.0.228"
                "1bb7id2xwx8izq50098s5j2sqrrvk31jbbrjqygyan6ask3qbls1"))

(define rust-serde-derive-1.0.228
  (crate-source "serde_derive" "1.0.228"
                "0y8xm7fvmr2kjcd029g9fijpndh8csv5m20g4bd76w8qschg4h6m"))

(define rust-serde-json-1.0.145
  (crate-source "serde_json" "1.0.145"
                "1767y6kxjf7gwpbv8bkhgwc50nhg46mqwm9gy9n122f7v1k6yaj0"))

(define rust-shlex-1.3.0
  (crate-source "shlex" "1.3.0"
                "0r1y6bv26c1scpxvhg2cabimrmwgbp4p3wy6syj9n0c4s3q2znhg"))

(define rust-smallvec-1.15.1
  (crate-source "smallvec" "1.15.1"
                "00xxdxxpgyq5vjnpljvkmy99xij5rxgh913ii1v16kzynnivgcb7"))

(define rust-syn-2.0.108
  (crate-source "syn" "2.0.108"
                "05z908svb0yw5wzrlv27l2i8j1d8l16hd5r8bjh809146myr2n6s"))

(define rust-tempfile-3.20.0
  (crate-source "tempfile" "3.20.0"
                "18fnp7mjckd9c9ldlb2zhp1hd4467y2hpvx9l50j97rlhlwlx9p8"))

(define rust-thiserror-2.0.17
  (crate-source "thiserror" "2.0.17"
                "1j2gixhm2c3s6g96vd0b01v0i0qz1101vfmw0032mdqj1z58fdgn"))

(define rust-thiserror-impl-2.0.17
  (crate-source "thiserror-impl" "2.0.17"
                "04y92yjwg1a4piwk9nayzjfs07sps8c4vq9jnsfq9qvxrn75rw9z"))

(define rust-toml-span-0.7.1
  (crate-source "toml-span" "0.7.1"
                "1dsici17lfypzs4lswjv652qiwqldjypvhm6rdfzmd9pshbs8azj"))

(define rust-typed-arena-2.0.2
  (crate-source "typed-arena" "2.0.2"
                "0shj0jpmglhgw2f1i4b33ycdzwd1z205pbs1rd5wx7ks2qhaxxka"))

(define rust-unicode-ident-1.0.18
  (crate-source "unicode-ident" "1.0.18"
                "04k5r6sijkafzljykdq26mhjpmhdx4jwzvn1lh90g9ax9903jpss"))

(define rust-unicode-segmentation-1.12.0
  (crate-source "unicode-segmentation" "1.12.0"
                "14qla2jfx74yyb9ds3d2mpwpa4l4lzb9z57c6d2ba511458z5k7n"))

(define rust-unicode-width-0.1.14
  (crate-source "unicode-width" "0.1.14"
                "1bzn2zv0gp8xxbxbhifw778a7fc93pa6a1kj24jgg9msj07f7mkx"))

(define rust-urlencoding-2.1.3
  (crate-source "urlencoding" "2.1.3"
                "1nj99jp37k47n0hvaz5fvz7z6jd0sb4ppvfy3nphr1zbnyixpy6s"))

(define rust-utf8parse-0.2.2
  (crate-source "utf8parse" "0.2.2"
                "088807qwjq46azicqwbhlmzwrbkz7l4hpw43sdkdyyk524vdxaq6"))

(define rust-wasi-0.11.1+wasi-snapshot-preview1
  (crate-source "wasi" "0.11.1+wasi-snapshot-preview1"
                "0jx49r7nbkbhyfrfyhz0bm4817yrnxgd3jiwwwfv0zl439jyrwyc"))

(define rust-wasi-0.14.2+wasi-0.2.4
  (crate-source "wasi" "0.14.2+wasi-0.2.4"
                "1cwcqjr3dgdq8j325awgk8a715h0hg0f7jqzsb077n4qm6jzk0wn"))

(define rust-wasm-bindgen-0.2.105
  (crate-source "wasm-bindgen" "0.2.105"
                "0q7aqnjwl9dn5sql46nbhzz63v3q0mdp3rsv7zcvn7s1zhypk5fs"))

(define rust-wasm-bindgen-macro-0.2.105
  (crate-source "wasm-bindgen-macro" "0.2.105"
                "1hjrmfnnjcksmf4kizsb78a0apr6ym73iwlhhszsf14ya0s469h4"))

(define rust-wasm-bindgen-macro-support-0.2.105
  (crate-source "wasm-bindgen-macro-support" "0.2.105"
                "1g3ydkp5js5qg56a30w9v090v5byslay2lidjiifa8pkv4ww62s2"))

(define rust-wasm-bindgen-shared-0.2.105
  (crate-source "wasm-bindgen-shared" "0.2.105"
                "0xmgnvf5m91lw6avjxha1v76bm27g2q5jw7c4lyb7g44ijiiiwkn"))

(define rust-web-sys-0.3.82
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "web-sys" "0.3.82"
                "18d9k5f92czaj27zmw20nzcnax5rdcx68r3s3ypg8irss309a7rs"))

(define rust-winapi-0.3.9
  (crate-source "winapi" "0.3.9"
                "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))

(define rust-winapi-i686-pc-windows-gnu-0.4.0
  (crate-source "winapi-i686-pc-windows-gnu" "0.4.0"
                "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))

(define rust-winapi-x86-64-pc-windows-gnu-0.4.0
  (crate-source "winapi-x86_64-pc-windows-gnu" "0.4.0"
                "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))

(define rust-windows-aarch64-gnullvm-0.52.6
  (crate-source "windows_aarch64_gnullvm" "0.52.6"
                "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))

(define rust-windows-aarch64-msvc-0.52.6
  (crate-source "windows_aarch64_msvc" "0.52.6"
                "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))

(define rust-windows-i686-gnu-0.52.6
  (crate-source "windows_i686_gnu" "0.52.6"
                "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))

(define rust-windows-i686-gnullvm-0.52.6
  (crate-source "windows_i686_gnullvm" "0.52.6"
                "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))

(define rust-windows-i686-msvc-0.52.6
  (crate-source "windows_i686_msvc" "0.52.6"
                "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))

(define rust-windows-sys-0.59.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.59.0"
                "0fw5672ziw8b3zpmnbp9pdv1famk74f1l9fcbc3zsrzdg56vqf0y"))

(define rust-windows-targets-0.52.6
  (crate-source "windows-targets" "0.52.6"
                "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))

(define rust-windows-x86-64-gnu-0.52.6
  (crate-source "windows_x86_64_gnu" "0.52.6"
                "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))

(define rust-windows-x86-64-gnullvm-0.52.6
  (crate-source "windows_x86_64_gnullvm" "0.52.6"
                "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))

(define rust-windows-x86-64-msvc-0.52.6
  (crate-source "windows_x86_64_msvc" "0.52.6"
                "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))

(define rust-wit-bindgen-rt-0.39.0
  (crate-source "wit-bindgen-rt" "0.39.0"
                "1hd65pa5hp0nl664m94bg554h4zlhrzmkjsf6lsgsb7yc4734hkg"))

(define rust-xmlparser-0.13.6
  (crate-source "xmlparser" "0.13.6"
                "1r796g21c70p983ax0j6rmhzmalg4rhx61mvd4farxdhfyvy1zk6"))

(define-cargo-inputs lookup-cargo-inputs
                     (jaq =>
                          (list rust-aho-corasick-1.1.4
                                rust-arbitrary-1.4.2
                                rust-arraydeque-0.5.1
                                rust-autocfg-1.5.0
                                rust-base64-0.22.1
                                rust-bitflags-2.10.0
                                rust-bstr-1.10.0
                                rust-bumpalo-3.14.0
                                rust-bytes-1.10.1
                                rust-cc-1.2.44
                                rust-cfg-if-1.0.4
                                rust-ciborium-io-0.2.2
                                rust-ciborium-ll-0.2.2
                                rust-clipboard-win-5.4.1
                                rust-codesnake-0.2.1
                                rust-console-log-1.0.0
                                rust-crunchy-0.2.4
                                rust-csv-1.4.0
                                rust-csv-core-0.1.13
                                rust-dirs-6.0.0
                                rust-dirs-sys-0.5.0
                                rust-dyn-clone-1.0.20
                                rust-env-logger-0.10.2
                                rust-equivalent-1.0.2
                                rust-errno-0.3.14
                                rust-error-code-3.3.2
                                rust-fastrand-2.3.0
                                rust-fd-lock-4.0.4
                                rust-find-msvc-tools-0.1.4
                                rust-foldhash-0.1.5
                                rust-getrandom-0.2.16
                                rust-getrandom-0.3.3
                                rust-half-2.4.1
                                rust-hashbrown-0.15.4
                                rust-hashlink-0.10.0
                                rust-hifijson-0.5.0
                                rust-indexmap-2.10.0
                                rust-itoa-1.0.15
                                rust-jiff-0.2.15
                                rust-jiff-static-0.2.15
                                rust-jiff-tzdb-0.1.4
                                rust-jiff-tzdb-platform-0.1.3
                                rust-js-sys-0.3.82
                                rust-libc-0.2.177
                                rust-libm-0.2.15
                                rust-libmimalloc-sys-0.1.44
                                rust-libredox-0.1.10
                                rust-linux-raw-sys-0.11.0
                                rust-log-0.4.28
                                rust-memchr-2.7.6
                                rust-memmap2-0.9.9
                                rust-mimalloc-0.1.48
                                rust-nix-0.27.1
                                rust-num-bigint-0.4.6
                                rust-num-integer-0.1.46
                                rust-num-traits-0.2.19
                                rust-once-cell-1.21.3
                                rust-option-ext-0.2.0
                                rust-portable-atomic-1.11.1
                                rust-portable-atomic-util-0.2.4
                                rust-proc-macro2-1.0.103
                                rust-quote-1.0.41
                                rust-r-efi-5.3.0
                                rust-redox-users-0.5.2
                                rust-regex-automata-0.4.13
                                rust-regex-bites-0.1.6
                                rust-rustix-1.1.2
                                rust-rustversion-1.0.22
                                rust-rustyline-13.0.0
                                rust-ryu-1.0.20
                                rust-saphyr-parser-0.0.6
                                rust-self-cell-1.2.1
                                rust-serde-1.0.228
                                rust-serde-core-1.0.228
                                rust-serde-derive-1.0.228
                                rust-serde-json-1.0.145
                                rust-shlex-1.3.0
                                rust-smallvec-1.15.1
                                rust-syn-2.0.108
                                rust-tempfile-3.20.0
                                rust-thiserror-2.0.17
                                rust-thiserror-impl-2.0.17
                                rust-toml-span-0.7.1
                                rust-typed-arena-2.0.2
                                rust-unicode-ident-1.0.18
                                rust-unicode-segmentation-1.12.0
                                rust-unicode-width-0.1.14
                                rust-urlencoding-2.1.3
                                rust-utf8parse-0.2.2
                                rust-wasi-0.11.1+wasi-snapshot-preview1
                                rust-wasi-0.14.2+wasi-0.2.4
                                rust-wasm-bindgen-0.2.105
                                rust-wasm-bindgen-macro-0.2.105
                                rust-wasm-bindgen-macro-support-0.2.105
                                rust-wasm-bindgen-shared-0.2.105
                                rust-web-sys-0.3.82
                                rust-winapi-0.3.9
                                rust-winapi-i686-pc-windows-gnu-0.4.0
                                rust-winapi-x86-64-pc-windows-gnu-0.4.0
                                rust-windows-sys-0.59.0
                                rust-windows-targets-0.52.6
                                rust-windows-aarch64-gnullvm-0.52.6
                                rust-windows-aarch64-msvc-0.52.6
                                rust-windows-i686-gnu-0.52.6
                                rust-windows-i686-gnullvm-0.52.6
                                rust-windows-i686-msvc-0.52.6
                                rust-windows-x86-64-gnu-0.52.6
                                rust-windows-x86-64-gnullvm-0.52.6
                                rust-windows-x86-64-msvc-0.52.6
                                rust-wit-bindgen-rt-0.39.0
                                rust-xmlparser-0.13.6)))

(define-public jaq
  (package
    (name "jaq")
    (version "3.0.0-beta")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jack-faller/jaq.git")
             (commit "4c98a2a")))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0q813nsym64i3xg925m6f366i9mp97lbp285rmpihi5d890bz5wg"))))
    (build-system cargo-build-system)
    (inputs (cargo-inputs 'jaq #:module '(jaq)))
    (arguments (list
                #:tests? #f
                #:install-source? #f
                #:cargo-package-crates ''("jaq")
                #:cargo-install-paths ''("jaq")))
    (home-page "https://github.com/01mf02/jaq")
    (synopsis "Just another JSON query tool")
    (description "This package provides Just another JSON query tool.")
    (license license:expat)))

jaq
