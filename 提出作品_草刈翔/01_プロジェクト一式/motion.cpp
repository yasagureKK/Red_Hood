//=============================================================================
// モーション処理 [motion.cpp]
// Author : 草刈 翔
//=============================================================================
//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "motion.h"
#include "player.h"
#include "enemy.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************
#define MOTION_PLAYER_FILE	"data/TEXT/motion_player.txt"
#define MOTION_WOLF00_FILE	"data/TEXT/motion_wolf00.txt"
#define MOTION_WOLF01_FILE	"data/TEXT/motion_wolf01.txt"
#define MOTION_BOSS_FILE	"data/TEXT/motion_boss.txt"

//=============================================================================
// コンストラクタ
//=============================================================================
CMotion::CMotion(void)
{
	// 変数のクリア
	for (int nCntMotion = 0; nCntMotion < MAX_MOTION_NUM; nCntMotion++)
	{
		m_aInfo[nCntMotion].nLoop = 0;
		m_aInfo[nCntMotion].nNumKey = 0;
		for (int nCntKey = 0; nCntKey < MAX_KEY_NUM; nCntKey++)
		{
			m_aInfo[nCntMotion].aKeyInfo[nCntKey].nFrame = 0;
			for (int nCntModel = 0; nCntModel < MAX_MODEL_NUM; nCntModel++)
			{
				m_aInfo[nCntMotion].aKeyInfo[nCntKey].aKey[nCntModel].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
				m_aInfo[nCntMotion].aKeyInfo[nCntKey].aKey[nCntModel].rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
			}
		}
	}

	m_nMaxModelNum = 0;
	m_nMaxMotionNum = 0;
	m_nNumKey = 0;
	m_nKey = 0;
	m_nKeyOld = 0;
	m_nType = 0;
	m_nTypeNext = 0;
	m_fCounter = 0;
	m_bConnect = false;
	m_bStop = false;
}

//=============================================================================
// デストラクタ
//=============================================================================
CMotion::~CMotion()
{

}

//=============================================================================
// モーション設定処理
//=============================================================================
void CMotion::SetMotion(int nType)
{
	if (nType >= m_nMaxMotionNum)
	{
		nType = m_nMaxMotionNum - 1;
	}

	m_nTypeNext = nType;
	m_bConnect = true;
	m_bStop = false;
	m_fCounter = 0.0f;

	// ■ プレイヤーのモーション
	/*　[0] ニュートラル
	/*	[1] 移動
	/*	[2] ジャンプ
	/*	[3] 着地
	/*	[4] ダッシュ
	/*	[5] 攻撃：斧 (1段目)
	/*	[6] 攻撃：斧 (2段目)
	/*	[7] 攻撃：斧 (3段目)
	/*	[8] 攻撃：ボウガン
	/*	[9] 被ダメージ
	/*	[10]ダウン
	/*	[11]クリア
	/*	[12]クリア(待機)		*/

	// ■ 狼00のモーション
	/*　[0] ニュートラル
	/*	[1] 移動
	/*	[2] 攻撃
	/*	[3] 被ダメージ			
	/*	[4]	ダウン				*/

	// ■ 狼01のモーション
	/*　[0] ニュートラル
	/*	[1] 移動
	/*	[2] 攻撃
	/*	[3] 被ダメージ			
	/*	[4]	ダウン				*/

	// ■ ボスのモーション
	/*　[0] ニュートラル
	/*	[1] 移動
	/*	[2] 攻撃
	/*	[3] ダウン				
	/*	[4] ジャンプ(溜め)
	/*	[5] ジャンプ
	/*	[6] 着地
	/*	[7] チャージ
	/*	[8] ダッシュ			*/
}