printl("cheated-ai script loaded.");

function ai_shoot() {
	for (local i = 1; i <= GetMaxPlayers(); i++) {
		local bot = GetPlayerFromUserID(i);
		if (bot != null && bot.IsValid() && bot.IsPlayerABot() && bot.IsAlive() && bot.GetTeam() == 2) //id合法且是活的AI幸存者
		{
			local botEyePos = bot.EyePosition(), closestTarget = null, closestDist = 9999, infected = null;
			while ((infected = Entities.FindInSphere(infected, botEyePos, 4000)) != null) //在半径为4000的球状范围内寻找感染者
			{
				if (infected != null && infected.IsValid() && infected.IsAlive() && infected.GetTeam() == 3) //id合法且是活的感染者
				{
					local canfire = true;
					// 检测bot能否射中infected，如果有墙等不可穿透的障碍物就不可射中，如果有树，草等可穿透的障碍物就可以射中
					// 使用批注中确定存在的接口补全canfire判定逻辑

					if (canfire) //查找最近目标
					{
						local dist = (botEyePos - infected.GetOrigin()).LengthSqr();
						if (dist < closestDist) {
							closestDist = dist;
							closestTarget = infected;
						}
					}
				}
			}
			//使用批注中确定存在的接口给ai实现锁头加开火功能
		}
	}
}


/*
CBaseEntity
这是实体的脚本句柄类。所有已生成实体都有一个使用CBaseEntity或者它的子类的脚本句柄。

所有游戏中的脚本句柄都有通过Entities来访问，实体脚本可以通过self来访问它本身的脚本句柄。
__KeyValueFromInt	void __KeyValueFromInt(string key, int value)	以整数设置实体的键值（KeyValue）. 这个函数只修改数值而不执行实体处理KeyValue所需要的任何代码, 所以可能会有令人意想不到的副作用。
__KeyValueFromFloat	void __KeyValueFromFloat(string key, float value)	以浮点数设置实体的KeyValue. 这个函数只修改数值而不执行实体处理KeyValue所需要的任何代码, 所以可能会有令人意想不到的副作用。
__KeyValueFromString	void __KeyValueFromString(string key, string value)	以字符串设置实体的KeyValue. 这个函数只修改数值而不执行实体处理KeyValue所需要的任何代码, 所以可能会有令人意想不到的副作用。
__KeyValueFromVector	void __KeyValueFromVector(string key, Vector value)	以向量（Vector）设置实体的KeyValue. 这个函数只修改数值而不执行实体处理KeyValue所需要的任何代码, 所以可能会有令人意想不到的副作用。
ApplyAbsVelocityImpulse	void ApplyAbsVelocityImpulse(Vector impulse)	对物理对象产生一次速度脉冲。/提供速度
ApplyLocalAngularVelocityImpulse	void ApplyLocalAngularVelocityImpulse(Vector impulse)	对物理对象产生一次角度脉冲。/提供角度（转弯）
ConnectOutput	void ConnectOutput(string output, string function)	添加一个I/O关联, 当指定的输出触发时将调用指定的函数。
DisconnectOutput	void DisconnectOutput(string output, string function)	从I/O事件中删除一个已关联的脚本函数。
FirstMoveChild	handle FirstMoveChild()
GetAngles	handle QAngle GetAngles()	以向量形式获取实体的欧拉角(pitch, yaw, roll)。
GetBaseVelocity	Vector GetBaseVelocity()	获取基础速度 [待完善]
GetClassname	string GetClassname()	返回实体的种类名，包含player和infected。
GetContext	variable GetContext(string name)	GetContext( name ):检查一个对象的状态然后返回对象是否可用.可能返回string,float,或nil(如果对象没有找到)。
GetEntityHandle	unknown GetEntityHandle()	获取一个实体的 C++ EHANDLE(en)参照。这是一个无法被Squirrel直接使用的不透明数据类型，不是一个普通的脚本句柄。
GetEntityIndex	int GetEntityIndex()	返回实体的索引，这是和用于游戏尸潮时间的索引类型相同。
GetForwardVector	Vector GetForwardVector()	返回实体的前进向量。
GetHealth	int GetHealth()	返回实体当前的生命值（并不包括生还者临时血量/虚血）。
GetLocalAngularVelocity	QAngle GetLocalAngularVelocity()	获取角速度向量。
GetLocalVelocity	Vector GetLocalVelocity()	获取实体的速度向量。
GetMoveParent	handle GetMoveParent()	如果实体位于层次结构(hierarchy)中, 检索实体的父级(parent)。
GetName	string GetName()	返回实体的targetname。
GetOrigin	Vector GetOrigin()	返回实体在地图内的位置。
GetOwnerEntity	handle GetOwnerEntity()	获取实体的所有者(owner)。(备注：似乎只有当需要在这个实体上使用SetOwner()时这个函数才有用, 可能也不尽然)
GetPreTemplateName	string GetPreTemplateName()	Get the entity name stripped of template unique decoration.
GetRootMoveParent	handle GetRootMoveParent()	如果实体位于层次结构中，顺着层次结构检索实体的根父级。
GetScriptId	string GetScriptId()	检索用于引用脚本系统中的实体的唯一标识符。
GetScriptScope	handle GetScriptScope()	检索存储与此实体关联的实体脚本数据的表。
GetVelocity	Vector GetVelocity()	返回实体的速度向量。
IsPlayer	bool IsPlayer()	这个实体是否为玩家类。
IsValid	bool IsValid()	返回句柄是否属于有效的实体。
Kill	void Kill()	移除实体。
NextMovePeer	handle NextMovePeer()
OverrideFriction	void OverrideFriction(float duration, float friction)	暂时重设阻力的持续时间。
PrecacheModel	void PrecacheModel(string filename)	预缓存一个模型，填写模型路径，如果你的脚本采用了一个模型，请务必预缓存。
PrecacheScriptSound	void PrecacheScriptSound(string)	预缓存声音文件
待完善: 	这个是原文件还是soundscripts?
SetAngles	void SetAngles(QAngle direction)	设置实体的方位。
SetContext	void SetContext(string name, string value, float duration)	SetContext( 名字 , 值, 持续时间 ):存储任何在实体对话内容里的配对值.值是一个字符串.持续一段时间。(0代表永久)
SetContextNum	void SetContextNum(string name, float value, float duration)	SetContext( 名字 , 值, 持续时间 ):存储任何在实体对话内容里的配对值.值是一个数字(int或者float).持续一段时间。(0代表永久)
SetForwardVector	void SetForwardVector(Vector direction)	设置实体方向具有前进矢量。
SetFriction	void SetFriction(float friction)	设置玩家摩擦力（似乎无效）。
SetGravity	void SetGravity(float gravity)	设置重力。
SetHealth	void SetHealth(int health)	改变实体的生命值。不会检查是否会杀死玩家。
SetOrigin	void SetOrigin(Vector position)	设置实体在世界的坐标量。
SetVelocity	void SetVelocity(Vector velocity)	设置实体向量速度。
TakeDamage	void TakeDamage(float damage, int damageType, CBaseEntity attacker)	对实体造成伤害。可以指定伤害类型与产生此伤害的实体。
ValidateScriptScope	bool ValidateScriptScope()	返回实体的脚本域是否已被创建。
钩子/Hooks
如果其中一个函数在实体脚本中被声明, 实体将在适当的情况下自动运行此函数。
函数	签名	描述
InputInputName	bool InputInputName()	当实体从I/O系统中接收到输入时调用. 此函数的名称必须是实体input列表中的Input, 例如表示FireUser1的InputFireUser1. 当这个函数被调用时, 激活和调用的实体的脚本句柄会被写入接收输入的实体的脚本数据的activator和caller变量中. 这个函数必须返回一个布尔值. 将布尔值设定为true允许实体来处理输入, 否则用false阻止之。
OnEntText	string OnEntText()	如果ent_text用于一个实体并且这个函数存在的话，每tick它都将被激活。返回一个会显示在ent_text叠加层的字符串。对你用ent_text使用的对象来说，这是一个非常方便的功能来获取显示对象的脚本数据，或者在使用ent_text中随意运行一些代码（例如打开其他调试可视化）。提示：必须设置ent_text_allow_script 1 才能使这个功能激活。
提示:
ent_text是一个控制台指令，更多内容请详见Ent_text(en)主词条。
OnPostSpawn	void OnPostSpawn()	在实体生成时立即被调用. 这个函数可以用于让实体向主脚本注册自身，或以编程方式调整实体参数。
Precache	void Precache()	在脚本执行后调用. 可用于在地图加载时调用模型和声音的预缓存函数。

CTerrorPlayer （玩家相关函数）
CBaseEntity的延生扩展。

玩家实体的脚本句柄类。所有生还者和特殊感染者都属于这里。
Methods
函数	用法	描述
Extinguish	void Extinguish()	熄灭一个正在燃烧的玩家。
EyeAngles	QAngle EyeAngles()	返回玩家视角的角度。
EyePosition	Vector EyePosition()	返回玩家视角的位置。
GetActiveWeapon	handle GetActiveWeapon()	获取玩家当前武器的实体。
GetButtonMask	int GetButtonMask()	获取玩家当前按下的按键，可监听的按键十分有限。（仅限监听操作按键，比如前进后退，静步，跳跃等）。
GetHealthBuffer	int GetHealthBuffer()	返回当前生还者的临时血量（虚血）。
待完善: 	特感的临时血量（Temp Health）是否有效？
GetNetworkIDString	string GetNetworkIDString()	获取玩家的steam数字ID。
GetPlayerName	string GetPlayerName()	获取玩家昵称。
GetPlayerUserId	int GetPlayerUserId()	获取玩家userID。
GetSenseFlags	int GetSenseFlags()	获取当前BOT（小僵尸也可用）的感知标志：BOT_CANT_SEE, BOT_CANT_HEAR, BOT_CANT_FEEL，中文应该是BOT不能看见，BOT不能听到，BOT不能感受到。嗯？不明所以？请实测，估计有一些变化。
GetSurvivorSlot	int GetSurvivorSlot()	获取玩家的槽编号（也许就是血量显示的编号顺序）。
GetZombieType	int GetZombieType()	如果是感染者，找出其类型。可知的僵尸类型（ZombieType）分别是：Smoker = 1，Boomer = 2，Hunter = 3，Spitter = 4，Jockey = 5，Charger = 6，Witch = 7，Tank = 8，Survivor （生还者） = 9。
GiveAmmo	void GiveAmmo(int amount)	为玩家主要武器弹药池添加弹药。
GiveItem	void GiveItem(string itemname)	以物品/武器的名城给予玩家这件物品/武器。效果等同于控制台输入give health（生命值），katana（武士刀），rifle_ak47（AK47突击步枪）等。
GiveUpgrade	void GiveUpgrade(string upgrade)	给予主武器一种升级：UPGRADE_INCENDIARY_AMMO, UPGRADE_EXPLOSIVE_AMMO, UPGRADE_LASER_SIGHT，中文对应的升级分别是燃烧弹，高爆弹，激光瞄准器。此方法存在报错问题（有时）。
HitWithVomit	void HitWithVomit()	将胆汁溅射到一名玩家上。
IsDead	bool IsDead()	返回一个表示是否处于死亡状态的布尔值。
IsDying	bool IsDying()	返回一个表示是否处于濒死状态（应该是黑白状态）的布尔值。
IsIncapacitated	bool IsIncapacitated()	返回一个表示是否处于无能为力状态（应该是处于被控或者倒地，我没去研究，目前仅翻译）的布尔值。
IsHangingFromLedge	bool IsHangingFromLedge()	返回一个表示是否处于挂边状态的布尔值。
IsGhost	bool IsGhost()	返回一个表示感染者是否处于幽灵状态的布尔值。
IsOnFire	bool IsOnFire()	返回一个表示某位玩家是否处于燃烧状态的布尔值。
IsSurvivor	bool IsSurvivor()	是否是生还者团队（否则即感染者团队）。
RemoveUpgrade	void RemoveUpgrade(string upgrade)	移除一种主武器的升级：UPGRADE_INCENDIARY_AMMO, UPGRADE_EXPLOSIVE_AMMO, UPGRADE_LASER_SIGHT，中文对应的升级分别是燃烧弹，高爆弹，激光瞄准器。
ReviveByDefib	void ReviveByDefib()	通过电击器来复活死去的玩家。
ReviveFromIncap	void ReviveFromIncap()	救起一个被控/倒地的玩家。
SetFriction	void SetFriction(int friction)	设置玩家的阻力。
SetGravity	void SetGravity(int gravity)	设置玩家的重力。
SetHealthBuffer	void SetHealthBuffer(float health)	给生还者设置临时血量（虚血），当设置为0的时候并不会使玩家倒地/被控或者杀死。
SetReviveCount	void SetReviveCount(int count)	设置生还者的复活次数，并且更新第三打击（？）状态和效果。
SetSenseFlags	void SetSenseFlags(int flags)	设置当前Bot（小僵尸也可用）的感知标志：BOT_CANT_SEE, BOT_CANT_HEAR, BOT_CANT_FEEL，中文应该是BOT不能看见，BOT不能听到，BOT不能感受到。嗯？不明所以？请实测，估计有一些变化。
Stagger	void Stagger(Vector position)	类似于近距离被煤气罐爆炸造成的效果，但不造成伤害。
TryGetPathableLocationWithin	Vector TryGetPathableLocationWithin(int radius)	获取Nav（导航网络）中玩家可以通过的半径位置。
UseAdrenaline	void UseAdrenaline(int duration)	使玩家获得肾上腺素的速度与视觉效果，但并不会增加生命值（即只有肾上腺素的增益效果，不增加虚血）。

CEntities
游戏实例：Entities

一个用于查找和遍历所有游戏中的实体的脚本句柄的接口。要遍历一组实体, 请将null传递给适当方法中的前置参数以开始遍历, 或引用先前找到的实体以继续搜索。
FindByClassname	handle FindByClassname(handle previous, string class)	通过class name来寻找实体.。
FindByClassnameNearest	handle FindByClassnameNearest(string class, Vector origin, float radius)	通过class name，查找最接近指定点的实体。
FindByClassnameWithin	handle FindByClassnameWithin(handle previous, string class, Vector origin, float radius)	以一个半径范围查找指定class name的实体。
FindByModel	handle FindByModel(handle previous, string filename)	以模型名称来查找实体。
FindByName	handle FindByName(handle previous, string name)	以target name来查找实体。
FindByNameNearest	handle FindByNameNearest(string name, Vector origin, float radius)	以target name来查找最接近指定点的实体。
FindByNameWithin	handle FindByNameWithin(handle previous, string name, Vector origin, float radius)	以target name来查找指定半径范围的实体。
FindByTarget	handle FindByTarget(handle previous, string targetname)	通过该实体自身target来查找实体。
FindInSphere	handle FindInSphere(handle previous, Vector origin, float radius)	在一个指定半径范围内查找实体。
First	handle First()	开始遍历实体列表。
Next	handle Next(handle previous)	继续遍历实体列表, 为先前找到的实体提供参照。
IsValid	bool IsValid()	判断句柄是否属于一个有效实体。

CDirector （导演相关函数）
游戏实例：Director（导演）

Provides methods for reading information and forcing events in the AI Director. To influence the Director behavior, the DirectorOptions table is used instead.提供AI导演系统的读取信息和刷新事件的方法。若需要干预导游的行为，请参考丶改用DirectorOptions（导演选项）表。
ClearCachedBotQueries	void ClearCachedBotQueries()	将所有缓存的Bot询问结果标记为无效。
ForceNextStage	void ForceNextStage()	推动ScriptedMode进入下一阶段 —— 即请求GNSS激活。查了一下大概意思就是立刻进入游戏的下一个阶段，比如刚出门不刷特感，利用这个函数直接进入特感刷新阶段；比如打完尸潮有个空闲（Relax）时间，丧尸都很少，直接进入下一个阶段，刷尸潮或者刷更多僵尸等。详细可以见StageTypeAppendix(en)。
GetAveragedSurvivorSpan	float GetAveragedSurvivorSpan()	获取领头生还者与落后生还者之间的距离（路程/跨度），随着时间而平滑。
GetAveragedSurvivorSpeed	float GetAveragedSurvivorSpeed()	获取领头的生还者沿途移动的速率，随着时间而平滑。原文：Get the rate at which the lead survivor is moving along the flow, smoothed over time.
提示:
Flow——求生之路导航网格的一种参数，可以用于计算生还者所走的路程，以便安排时间补给或者用于计算对抗模式路程和分数。
GetCommonInfectedCount	int GetCommonInfectedCount()	返回当前已生成的感染者数量。
GetFurthestSurvivorFlow	float GetFurthestSurvivorFlow()	获取生还者走过的最远路程。返回的值应该是Flow，求生之路的一个隐藏值，当然仅猜测。
GetGameMode	string GetGameMode()	获取当前的游戏模式。如果是在突变模式内获取，则返回当前突变模式而不是基础游戏模式。
GetHoldoutCooldownEndTime	[待完善] float? GetHoldoutCooldownEndTime()	获取冷却倒计时结束的时间。好像是针对holdout这个突变模式，也可能是针对游戏内的尸潮之类的冷却，个人倾向于前者。
GetPendingMobCount	int GetPendingMobCount()	返回正在等待重生的感染者数量。
HasAnySurvivorLeftSafeArea	bool HasAnySurvivorLeftSafeArea()	返回布尔值，当一名或多名生还者离开起始点安全区域时为真。
提示:
安全区域是求生之路Nav（导航网络）中的一种属性，一般是第一关出生点标记为PLAYER_START和后续出门的安全屋标记为CHECKPOINT。
IsAnySurvivorInCombat	bool IsAnySurvivorInCombat()	返回布尔值，当任意一名生还者最近处于战斗或者受到伤害时为真。
IsPlayingOnConsole	bool IsPlayingOnConsole()	返回布尔值，如果游戏运行于控制台上时为真（例如Xbox 360）。
IsSinglePlayerGame	bool IsSinglePlayerGame()	返回布尔值，如果当前游戏是单人游戏时为真。
IsValid	bool IsValid()	返回布尔值，句柄是否属于一个有效实体。
IsTankInPlay	bool IsTankInPlay()	返回布尔值，如果任意一只Tank对生还者处于仇恨状态时为真。个人猜测仇恨状态指发现生还者准备攻击，而在前方刷克，但是生还者仅听到声音，双方皆未碰面时不是仇恨状态。
L4D1SurvivorGiveItem	void L4D1SurvivorGiveItem()	让一代的生还者们知道现在是给予玩家一件物品的好时机。消逝（The Passing）一二代相遇，一代会给予二代玩家一些物品，比如药丸。
PlayMegaMobWarningSounds	void PlayMegaMobWarningSounds()	播放尸潮来临的尖叫警示声，迫使玩家说出"Incoming horde"的语音。
ResetMobTimer	void ResetMobTimer()	在BUILD_UP阶段尽可能快惊动一个感染者。
提示:
BUILD_UP阶段即尸潮节奏的最前期，尸潮来临节奏为：BUILD_UP -> 产生尸潮 -> SUSTAIN_PEAK -> RELAX -> 再次 BUILD_UP。
提示:
在BUILD_UP阶段，我们可以注意到僵尸一般都是处于未警觉状态，很散漫，惊动感染者非尸潮，而是让感染者注意到玩家。
ResetSpecialTimers	void ResetSpecialTimers()	重置所有特感的计时器（以类型或生命槽），以便希望怪物尽快生成。
SetHoldoutCooldownEndTime	void SetHoldoutCooldownEndTime(float time? [待完善])	获取冷却倒计时结束的时间。
UserDefinedEvent1	void UserDefinedEvent1()	These trigger the appropriate output from the info_director entity when called.
 当来自info_director实体的合适的触发被激活时触发。不太明白。
UserDefinedEvent2	void UserDefinedEvent2()
UserDefinedEvent3	void UserDefinedEvent3()
UserDefinedEvent4	void UserDefinedEvent4()
*/