::Left4Bots.Settings <- {
	// [1/0] 1 = 尝试防止在切换章节前扔土制炸弹导致下一关机器人卡死
	anti_pipebomb_bug = 1

	// [1/0] 启用/禁用 自动化
	automation = 1

	// [1/0] 当队伍中有人类玩家时，是否自动启动自动化任务
	automation_autostart = 1

	// [1/0] 是否显示自动化调试文本（仅主机可见）
	automation_debug = 1

	// [1/0] 1 = 机器人到达终点安全屋后，自动给所有机器人下达“在安全屋内等待”的命令（坦克跑路变体有用）
	automation_stay_in_end_saferoom = 0

	// 主机器人 Think 间隔（默认 0.1，即每秒 10 次）。-1 = 自动设置为尽可能快。
	// 注意：脚本 Think 可到 30 次/秒（0.0333），但 CTerrorPlayer 的 Think 上限约 15 次/秒（0.06666）。
	bot_think_interval = -1

	// [1/0] 机器人拾取/丢弃携带物品时是否输出调试聊天消息
	carry_debug = 0

	// 战役结束时（死亡或倒地）机器人发送“BG”聊天的几率（百分比）
	chat_bg_chance = 0

	// 战役结束时（死亡或倒地）机器人可能发送的“BG”聊天内容（逗号分隔）
	chat_bg_lines = "bg,:(,:'("

	// 战役结束时（存活）机器人发送“GG”聊天的几率（百分比）
	chat_gg_chance = 0

	// 战役结束时（存活）机器人可能发送的“GG”聊天内容（逗号分隔）
	chat_gg_lines = "gg,GG,gg,GGG,gg,ggs,gg,GG,gg"

	// 新玩家加入说“hello”时，机器人回复的概率（百分比）
	chat_hello_chance = 0

	// 机器人对“hello”触发的可能回复（逗号分隔）
	chat_hello_replies = "hi,hello,hey,hi dude,wassup,hi,hello,hi,ciao"

	// 触发机器人回复的“hello”关键字（逗号分隔）
	chat_hello_triggers = "hi,hello,hey,hi guys,hi all,hey guys,yo,ciao"

	// [1/0] 启用/禁用 关安全屋门流程
	close_saferoom_door = 1

	// 当有生还者进入安全屋且身后没有人在 close_saferoom_door_behind_range 范围内时，安全屋内的机器人会迅速去关门的概率
	// 警告：在 CHECKPOINT 导航很差的地图上，可能把最后一名队友关在门外
	close_saferoom_door_all_chance = 0

	// 若进入安全屋者与其身后任一生还者距离 <= 此值，则机器人不会关门。0 = 仅当该玩家为最后一个进入者才会关门
	close_saferoom_door_behind_range = 400

	// 机器人进入安全屋后，若与门的距离大于此值，将启动关门流程；用于确保确实在屋内，避免把自己关在外面
	// 若地图导航很差，仍可能把自己关外，可尝试增大本值
	close_saferoom_door_distance = 70

	// [1/0] 1 = 每个 Think 都运行关门逻辑（默认约 15 次/秒）；0 = 降采样为约 3 次/秒
	// 1 更快关门；0 行为更随机，可能先深入屋内片刻再回门口
	close_saferoom_door_highres = 0

	// [1/0] 是否允许机器人点燃路障油桶（若为 0，则对该油桶的“摧毁/使用”命令将失效）
	damage_barricade = 1

	// [1/0] 是否允许机器人点燃油桶等其它物品
	damage_other = 0

	// 复活（电击器）目标的搜索半径
	deads_scan_radius = 1200

	// 扫描可复活目标时，机器人与尸体允许的最大高度差
	deads_scan_maxaltdiff = 320

	// 找到尸体但自己没有电击器时，会在尸体附近此半径内考虑拾取并使用电击器
	deads_scan_defibradius = 250

	// [1/0] 1 = 机器人在队友附近时会自动放置升级弹药包
	deploy_upgrades = 1

	// [1/0] 1 = 管理员可随时用“die”命令让机器人死亡；0 = 仅当没有人类生还者存活时可用
	die_humans_alive = 0

	// [1/0] 启用/禁用 躲Charger
	dodge_charger = 1

	// 判断是否需要躲 Charger 时，Charger 朝向与指向机器人的方向允许的最大夹角
	dodge_charger_diffangle = 10

	// 躲避延迟 = Charger 与机器人距离 × 本系数
	dodge_charger_distdelay_factor = 0.0006

	// 躲 Charger 时的最大侧移距离
	dodge_charger_maxdistance = 600

	// 躲 Charger 时的最小侧移距离
	dodge_charger_mindistance = 80

	// [1/0] 启用/禁用 躲坦克石头。若同时启用 shoot_rock，会优先躲避
	dodge_rock = 1

	// 判断是否需要躲石头时，石头飞行方向与指向机器人的方向允许的最大夹角
	dodge_rock_diffangle = 8

	// 躲石头的最大移动距离
	dodge_rock_maxdistance = 600

	// 躲石头的最小移动距离
	dodge_rock_mindistance = 140

	// [1/0] 启用/禁用 躲酸液
	dodge_spit = 1

	// 吐痰（酸液）在地面上的近似半径
	dodge_spit_radius = 150

	// 插件让机器人用“使用”键开/关门（以播放手部动画）；若失败（过远等），在此延时后强制开/关门
	door_failsafe_delay = 0.15

	// 当主武器为霰弹枪时，不切换到以下次武器：1 手枪，2 马格南，4 近战，8 电锯；15 = 全部；0 = 关闭（沿用原生 AI）
	enforce_shotgun = 1

	// 当主武器为狙击枪时，不切换到以下次武器：1 手枪，2 马格南，4 近战，8 电锯；15 = 全部；0 = 关闭（原生 AI）
	enforce_sniper_rifle = 1

	// 若机器人下落速度大于此值，将安全传送至随机队友。0 = 禁用。
	// 可设为 cvar fall_speed_fatal(默认720)/fall_speed_safe(560) 以避免秒杀/任何跌落伤害
	fall_velocity_warp = fall_speed_fatal

	// 要加载的 cvar 变更文件路径（空 = 不加载）
	file_convars = ""

	// 原生 AI 应（不）该拾取的物品列表文件（空 = 不加载）
	file_itemstoavoid = ""

	// 语音器/命令映射文件（空 = 不加载）
	file_vocalizer = ""

	// 武器偏好文件的前缀（完整文件名 = 前缀 + 机器人名小写 + .txt）
	file_weapons_prefix = ""

	// 执行“跟随”时，距离被跟随者 <= move_end_radius_follow 触发暂停；距离 > follow_pause_radius 才恢复，因此本值需大于 move_end_radius_follow
	follow_pause_radius = 220

	// [1/0] 是否把急救包/电击器让给人类玩家
	give_bots_medkits = 1

	// [1/0] 是否把止痛药/肾上腺素让给人类玩家
	give_bots_pills = 1

	// [1/0] 是否把投掷物让给人类玩家
	give_bots_nades = 1

	// [1/0] 是否把升级包让给人类玩家
	give_bots_upgrades = 1

	// [1/0] 是否把武器让给人类玩家
	give_bots_weapons = 1

	// [1/0] 人类是否可以把止痛药/肾上腺素给其他生还者（并与机器人交换）
	give_humans_meds = 1

	// [1/0] 人类是否可以把燃烧瓶/土制炸弹/胆汁给其他生还者（并与机器人交换）
	give_humans_nades = 1

	// 给予物品的最大距离
	give_max_range = 270

	// [0/1/2] 是否接管额外的 L4D1 生还者：0 不接管；1 仅处理拾取/投掷（配合 itemstoavoid）；2 完整 AI。
	// 仅当主队伍是 L4D2 生还者时生效
	handle_l4d1_survivors = 2

	// 当机器人尝试在血量 <= 此值时自疗（常见于起始安全屋），若队伍有人类或附近备用急救包不足以覆盖所有需要者，将中断
	heal_interrupt_minhealth = 50

	// [1/0] 1 = 自疗时强制不打断（附近感染者过多除外）；0 = 不安全时可打断（原生行为）
	heal_force = 0

	// 搜索备用急救包的半径
	heal_spare_medkits_radius = 500

	// 对尸潮投掷土制炸弹/胆汁的概率（每秒检查多次，数值宜较低）
	horde_nades_chance = 30

	// 识别尸潮时，统计的普通感染者与机器人允许的最大高度差
	horde_nades_maxaltdiff = 120

	// 识别尸潮时，统计普通感染者的最大距离
	horde_nades_radius = 450

	// 识别尸潮时，判定阈值：普通感染者的最少数量
	horde_nades_size = 10

	// 使用“hurry”命令后，此时间内禁用机器人增强 AI（不拾取/不执行命令/不复活/不投掷/不收集）
	hurry_time = 0

	// [1/0] 在启用倒地封路（incap_block_nav_interval > 0）时，是否可视化被封/未封的导航区域
	incap_block_nav_debug = 0

	// 有生还者倒地且坦克在 incap_block_nav_tank_range 范围内时，封锁倒地者周围 incap_block_nav_radius 的导航区，避免机器人冒险救人。
	// 坦克离开范围/死亡或倒地者恢复时自动解除。0 = 禁用
	incap_block_nav_interval = 0.5

	// 封锁半径（以倒地者为中心，在开启功能时生效）
	incap_block_nav_radius = 100

	// 判定“坦克靠近”的半径（需有仇恨的坦克）
	incap_block_nav_tank_range = 700

	// [1/0] 1 = 反转 itemstoavoid 逻辑：原生 AI 避开除文件列出的物品外的所有物品；0 = 正常（仅避开文件列出项）
	// 注意：仅影响原生拾取，不影响 L4B2 的偏好/团队最小配置。配置不当可能导致反复拾取
	items_not_to_avoid = 1

	// >0 时，若机器人误伤被 Jockey 骑乘的队友，则免除队友伤害，改为对 Jockey 造成此数值伤害。0 = 禁用
	jockey_redirect_damage = 40

	// 当落后人类 >= 此距离时，暂停当前“带路”指令。0 = 不暂停
	lead_pause_behind_dist = 250

	// [1/0] 计算“带路”路径时，是否增加地面可行性 Trace 检查
	lead_check_ground = 0

	// >0 时，在屏幕上绘制“带路”路径片段此时长（仅主机）。0 = 不绘制
	lead_debug_duration = 0

	// “带路”遇到封锁区时，尝试旁路的最大绕行距离；0 = 不寻路，直接停止
	lead_detour_maxdist = 10000

	// [1/0] 1 = 避免将“带路”片段终点放在会伤害的导航区（火、酸液等），方便原生导航尝试绕行
	lead_dontstop_ondamaging = 1

	// “带路”单段 MOVE 的最大近似距离
	lead_max_segment = 800

	// “带路”时与人类的最大允许距离，超出则暂停（0 = 不限制）
	lead_max_separation = 1200

	// “带路”单段 MOVE 的最小距离（下一段终点更近则视为到达目标，带路结束）
	lead_min_segment = 100

	// 触发 vocalizer_lead_start 的最小间隔（开始/恢复“带路”时发声）
	lead_vocalize_interval = 50

	// [1/0] 是否加载配置的 convars.txt
	load_convars = 1

	// 控制台日志最低级别：0 不打印；1 错误；2 错误+警告；3 加信息；4 加调试
	loglevel = 3

	// [1/0] 未执行 MOVE 指令时也启用脚本“手动射击”。0 = 仅在 MOVE 中；1 = 始终启用
	manual_attack_always = 0

	// 机器人爆头射击的最大距离（建议小于 manual_attack_radius，避免远处浪费弹药）。0 = 总是打身体
	manual_attack_common_head_radius = 450

	// 0 = 双持手枪全速；1 = 将双持射速限制为 0.2 秒/发，接近原生机器人
	manual_attack_dual_pistol_nerf = 0

	// [0.0-1.0] 执行 MOVE 时（或始终启用时），对敌开火所需的视线对准程度
	// 0/-1 几乎无要求；0.6 见就打；0.99 极少找新目标；1.0 几乎不开火
	manual_attack_mindot = 0.6

	// MOVE 中（或始终）可射击敌人的最大距离
	manual_attack_radius = 1000

	// 平滑转向：开火时分步转动视角而非瞬间对准。可用来控制瞄准速度；0 = 禁用。
	// 参考：sb_normal_saccade_speed=350，sb_combat_saccade_speed=1000；500≈转180°至少0.36秒；高级1000，专家2000
	manual_attack_saccade_speed = 2000

	// 对特感爆头的最大距离（建议小于 manual_attack_radius）。0 = 总是打身体
	manual_attack_special_head_radius = 360

	// 0 = 只打激怒的普感；1 = 也打游荡的普感
	manual_attack_wandering = 1

	// 通用目的地：视为到达的最大距离
	move_end_radius = 30

	// 复活队友：开始使用电击器的最大距离
	move_end_radius_defib = 80

	// 开/关门：视为到达门口的最大距离
	move_end_radius_door = 100

	// 跟随：视为已跟上的最大距离
	move_end_radius_follow = 100

	// 治疗队友：开始治疗时与目标的最大距离
	move_end_radius_heal = 80

	// 带路：视为到达片段终点的最大距离
	move_end_radius_lead = 110

	// 倒油：开始倒油前与目标的最大距离
	move_end_radius_pour = 16

	// 拾取清道物：开始拾取前与物品的最大距离
	move_end_radius_scavenge = 80

	// 等待：允许离开等待点的最大距离
	move_end_radius_wait = 150

	// 女巫：开始射击前与女巫的最大距离
	move_end_radius_witch = 100

	// 高优先级 MOVE 超时上限（无论是否到达），用于处理可能不可达情况
	move_hipri_timeout = 5.0

	// 若 >=0，则在加载 convars.txt 后覆盖 cvar sb_debug_apoproach_wait_time；<0 = 不改动
	move_wait_time = 0.5

	// >0 时绘制 BotMoveTo 区域与目标点此时长（仅主机）。0 = 不绘制
	moveto_debug_duration = 0

	// [1/0] 将 MOVE 目标设为物品最近的导航区而非物品本体（可绕过部分地图问题）
	moveto_nav = 1

	// [1/0] 是否显示指令调试文本（仅主机）
	orders_debug = 0

	// [1/0] 1 = 无指令队列，新指令自动取消旧指令（自动化指令仍使用队列）；0 = 按优先级排队，可用“cancel”取消
	orders_no_queue = 0

	// [1/0] 暂停开始/结束时是否输出调试聊天
	pause_debug = 0

	// 暂停的最短持续时间（即便满足恢复条件也不会早于此时长）
	pause_min_time = 2.0

	// 两次拾取之间的最小间隔
	pickups_min_interval = 0.8

	// 指令拾取默认使用“使用”键（有手部动画）；若失败，在此延时后强制放入背包，避免卡死
	pickups_failsafe_delay = 0.15

	// 仅当此范围内至少有一名人类时才会为拾取移动（0 = 不限制）
	pickups_max_separation = 800

	// [1/0] 0 = 没有主武器时不捡近战；1 = 总是可捡
	pickups_melee_noprimary = 1

	// 与目标物品距离不超过此值时执行拾取
	pickups_pick_range = 90

	// [1/0] 1 = 优先凑双持；0 = 仅单持
	pickups_pistol_dual = 1

	// 只考虑此半径内（且可见）的拾取物
	pickups_scan_radius = 400

	// [1/0] 1 = L4B AI 始终处理偏好文件中所有物品（含武器）；0 = 仅在执行指令时处理主/副武器，休息时忽略（其他物品仍处理）
	pickups_wep_always = 1

	// 主武器弹药百分比低于此值时，寻找补弹箱
	pickups_wep_ammo_replenish = 80.0

	// 地上的武器至少有此百分比弹药才考虑拾取
	pickups_wep_min_ammo = 10.0

	// 当前主武器弹药百分比低于此值时，考虑换任意其他武器
	pickups_wep_replace_ammo = 1.0

	// 若武器中升级弹药（燃烧/爆炸）数量不低于此值，则忽略地面升级包；低于则考虑使用
	pickups_wep_upgraded_ammo = 1

	// [1/0] 给予/交换物品时是否播放声音
	play_sounds = 1

	// [1/0] 在战役类模式（合作/对抗/写实）中自动开始油桶清道
	scavenge_campaign_autostart = 1

	// 自动跟随清道机器人的“空闲”机器人最大数
	scavenge_max_autofollow = 2

	// 当 scavenge_pour=0 时，机器人在倒入目标周围此半径内丢下油桶/可乐瓶
	scavenge_drop_radius = 200

	// [1/0] 1 = 由远及近收集；0 = 由近及远
	scavenge_items_farthest_first = 0

	// [1/0] 1 = 用流程距离（flow）判近远；0 = 用直线距离
	scavenge_items_flow_distance = 1

	// [1/0] 1 = 以倒入目标为基准；0 = 以当前机器人为基准
	scavenge_items_from_pourtarget = 0

	// 清道协调逻辑的周期
	scavenge_manager_interval = 1

	// 参与清道的机器人最大数量
	scavenge_max_bots = 2

	// [1/0] 1 = 收集后自行倒入；0 = 将物品丢在使用点附近
	scavenge_pour = 1

	// [1/0] 是否可视化清道使用目标（调试）
	scavenge_usetarget_debug = 0

	// [1/0] 启用/禁用 射击坦克石头。若同时启用躲避，将优先躲避
	shoot_rock = 1

	// 判定是否射击石头时允许的最大夹角（石头方向 vs 指向机器人方向）
	shoot_rock_diffangle = 8

	// 射击提前量：相对石头当前方向的提前射击力度
	shoot_rock_ahead = 4

	// cm_ShouldHurry 导演参数的值（具体效果不详）
	should_hurry = 1

	// 推普感时抬头角度修正（相对脚下，<0 更高，>0 更低）
	shove_commons_deltapitch = -6.0

	// 执行 MOVE 时，自动推开此半径内的普感（0 = 禁用）
	shove_commons_radius = 35

	// 当猎人/骑士攻击自己时，尝试“空手拦截”（deadstop）的概率
	shove_deadstop_chance = 100

	// 对特感执行 deadstop 时的抬头角度修正
	shove_deadstop_deltapitch = -9.5

	// 在 shove_specials_radius 范围内推特感时的抬头角度修正
	shove_specials_deltapitch = -6.0

	// 推特感（不含 Boomer）的半径（0 = 禁用）
	shove_specials_radius = 70

	// 在 shove_specials_radius 范围内推被舌头缠住的队友时的抬头角度修正
	shove_tonguevictim_deltapitch = -6.0

	// 推被 Smoker 舌头缠住的队友的半径（0 = 禁用）
	shove_tonguevictim_radius = 90

	// [1/0] 1 = 拾取物品时，若存在可能需要的玩家，将在聊天中提示（“这里有武器/弹药”等）；0 = 仅语音提示
	// 注意：signal_max_distance 必须 > 0 整套提示系统才生效
	signal_chat = 1

	// 向可能需要的玩家发出物品信号的最大距离。0 = 禁用提示系统
	signal_max_distance = 2500

	// 触发发信号的最小距离阈值（太近不提示）
	signal_min_distance = 150

	// 同类信号（弹药/武器/投掷物等）之间的最小间隔
	signal_min_interval = 5.0

	// [1/0] 若安装启用 Left 4 Fun 插件，则同时对物品使用 L4F 的 PING 指令。0 = 不使用
	// 注意：signal_max_distance 必须 > 0 提示系统才工作
	signal_ping = 0

	// [1/0] 启用携带物的智能“使用”：对可携带物（油桶、侏儒、可乐等）的“使用”自动转为“携带”
	smart_use_carry = 1

	// [1/0] 启用布置物的智能“使用”：对可部署物（升级弹药包）的“使用”自动转为“部署”
	smart_use_deploy = 1

	// [1/0] 启用可破坏路障的智能“使用”：对路障油桶的“使用”自动转为“摧毁”
	smart_use_destroy = 1

	// [1/0] 启用清道物的智能“使用”：对清道物（有倒入目标时的油桶/可乐）的“使用”自动转为“清道”
	smart_use_scavenge = 1

	// [1/0] 是否射击正在勒住队友的 Smoker 舌头（在少数情况下可能反而拖慢救援）
	smoker_shoot_tongue = 1

	// [1/0] 射舌头时是否下蹲
	smoker_shoot_tongue_duck = 0

	// [1/0] 1 = 酸液落地后，阻塞其覆盖下方的导航区，尽量避免机器人踏入；0 = 原生行为。
	// 注意：离落点很近或正向该方向移动时仍可能踏入；阻塞也可能在极少数情况下带来卡酸
	spit_block_nav = 0

	// 机器人受到酸液伤害的倍数；设为 2 以接近玩家伤害
	spit_damage_multiplier = 1.5

	// [1/0] 是否输出 L4B2 卡住检测（非游戏内置）的调试聊天
	stuck_debug = 0

	// [1/0] 启用/禁用 L4B2 的卡住检测（非游戏内置）
	stuck_detection = 1

	// [1/0] 1 = 机器人停止移动即触发“脱困”；0 = 仅当移动距离 > stuck_range 时触发
	stuck_nomove_unstuck = 1

	// L4B2 卡住检测用的阈值距离
	stuck_range = 100.0

	// 视为卡住的最短时间
	stuck_time = 2.9

	// [1/0] 是否允许机器人为 T3 武器补给弹药
	t3_ammo_bots = 1

	// [1/0] 是否允许人类为 T3 武器补给弹药
	t3_ammo_human = 0

	// 对坦克投掷燃烧瓶的概率（每秒多次检查，建议较低）
	tank_molotov_chance = 25

	// 当有仇恨的坦克进入此半径内时强制执行“撤退”。0 = 禁用
	tank_retreat_radius = 650

	// 血量低于此值的坦克将不作为燃烧瓶/胆汁目标
	tank_throw_min_health = 1500

	// 对坦克投掷的最小距离
	tank_throw_range_min = 200

	// 对坦克投掷的最大距离
	tank_throw_range_max = 1300

	// 对坦克投掷燃烧瓶时，坦克与其他生还者的最小安全间距
	tank_throw_survivors_mindistance = 240

	// 对坦克投掷燃烧瓶/胆汁时的俯仰角修正（<0 抬高，>0 压低）
	tank_throw_deltapitch = 3

	// 对坦克投掷胆汁的概率（每秒多次检查，建议较低）
	tank_vomitjar_chance = 1

	// 队伍层面保留的电锯最大数量（无视个人偏好）
	team_max_chainsaws = 0

	// 队伍层面保留的近战武器最大数量（无视个人偏好）
	team_max_melee = 2

	// 队伍层面至少保留的电击器数量（无视个人偏好）
	team_min_defibs = 0

	// 队伍层面至少保留的急救包数量（无视个人偏好）
	team_min_medkits = 2

	// 队伍层面至少保留的燃烧瓶数量（无视个人偏好）
	team_min_molotovs = 1

	// 队伍层面至少保留的土制炸弹数量（无视个人偏好）
	team_min_pipebombs = 1

	// 队伍层面至少保留的霰弹枪数量（无视个人偏好）。若无 T2 霰弹，将优先保留 T1 霰弹而非换取 T2 步枪
	team_min_shotguns = 1

	// 队伍层面至少保留的胆汁数量（无视个人偏好）
	team_min_vomitjars = 0

	// 各类 Thinker 的思考间隔；-1 = 尽可能快
	thinkers_think_interval = -1

	// [1/0] 启用/禁用 投掷燃烧瓶
	throw_molotov = 1

	// 有队友已投掷燃烧瓶后，至少等待此时间再投
	throw_molotov_interval = 4.0

	// 投掷土制炸弹与胆汁时的俯仰角修正（<0 抬高，>0 压低）
	throw_nade_deltapitch = -6

	// 有队友已投掷土制炸弹/胆汁后，至少等待此时间再投
	throw_nade_interval = 10.0

	// 目标距离至少达到此值才考虑投掷土制炸弹/胆汁
	throw_nade_mindistance = 250

	// 投掷土制炸弹/胆汁的理想距离（需大于最小距离）
	throw_nade_radius = 500

	// [1/0] 启用/禁用 投掷土制炸弹
	throw_pipebomb = 1

	// [1/0] 启用/禁用 投掷胆汁
	throw_vomitjar = 1

	// 用于寻找拾取物的 TraceLine 掩码
	tracemask_pickups = 134242379 // 0x1|0x2|0x8|0x40|0x2000|0x4000|0x8000000（实体、窗户、栅格、阻挡视线、忽略nodraw不透明、可移动、细节）

	// 其他 TraceLine 的掩码（TRACE_MASK_DEFAULT，见 left4lib_consts.nut）
	tracemask_others = 1174421507

	// [1/0] 1 = 机器人也会如玩家般因误射/跳上车而触发车警报；0 = 正常（不触发）
	trigger_caralarm = 0

	// [1/0] 1 = 机器人也会如玩家般因误射女巫而惊动女巫；0 = 正常（不触发）
	trigger_witch = 0

	// 从机器人处获得急救包/电击器所需的最低 L4U 等级（2 管理员，1 朋友，0 路人，-1 捣乱者）
	userlevel_give_medkit = 1

	// 从机器人处获得其他物品所需的最低 L4U 等级
	userlevel_give_others = 0

	// 从机器人处获得武器所需的最低 L4U 等级
	userlevel_give_weapons = 1

	// 向机器人下达指令所需的最低 L4U 等级
	userlevel_orders = 1

	// 触发机器人语音（大笑/谢谢等）所需的最低 L4U 等级
	userlevel_vocalizer = 0

	// 通过“Look”选中的机器人保持选中状态的时长，超时后重置
	vocalize_botselect_timeout = 4.0

	// [1/0] 是否允许通过语音器下达指令（不影响聊天/控制台）
	vocalizer_commands = 1

	// 结束“goto”指令时可能播放的语音命令（逗号分隔，随机一条）
	vocalizer_goto_stop = "PlayerAnswerLostCall,PlayerLostCall"

	// 玩家“笑”时机器人跟笑的概率
	vocalizer_laugh_chance = 30

	// 开始“lead”时可能播放的语音命令（随机一条）
	vocalizer_lead_start = "PlayerFollowMe,PlayerMoveOn,PlayerEmphaticGo"

	// 结束“lead”时可能播放的语音命令（随机一条）
	vocalizer_lead_stop = "PlayerAnswerLostCall,PlayerLostCall,PlayerStayTogether,PlayerLeadOn"

	// 因尸潮而开始暂停时，机器人播报尸潮警告的概率
	vocalizer_onpause_horde_chance = 100

	// 因特感而开始暂停时，机器人播报特感警告的概率
	vocalizer_onpause_special_chance = 100

	// 因坦克而开始暂停时，机器人播报坦克警告的概率
	vocalizer_onpause_tank_chance = 100

	// 因女巫而开始暂停时，机器人播报女巫警告的概率
	vocalizer_onpause_witch_chance = 100

	// 误伤队友后说“抱歉”的概率
	vocalizer_sorry_chance = 100

	// 玩家“Nice shoot”后，被看向的机器人（或刚击杀特感的机器人）说“Thanks”的概率
	vocalizer_thanks_chance = 100

	// 机器人收到指令时可能播放的语音命令
	vocalizer_yes = "Ready"

	// 玩家说“Thanks”后，被看向的机器人说“You're welcome”的概率
	vocalizer_youwelcome_chance = 100

	// [1/0] 执行“wait”时机器人是否下蹲等待（1 下蹲，0 站立）
	wait_crouch = 1

	// [1/0] 1 = 不会暂停“wait”指令（仍会为更高优先级任务移动，如躲牛/躲酸/复活等）
	wait_nopause = 0

	// [1/0] 1 = 因附近女巫而暂停指令，且手持霰弹时，自动下达爆头女巫（crown）指令
	witch_autocrown = 1
}