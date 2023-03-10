//=============================================================================
// 狼01のモーション処理 [motion_wolf01.h]
// Author : 草刈 翔
//=============================================================================
#ifndef _MOTION_WOLF01_H_
#define _MOTION_WOLF01_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "motion.h"

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CScene;

//*****************************************************************************
// クラスの定義
//*****************************************************************************
class CMotionWolf01 : public CMotion
{
public:
	CMotionWolf01();									// コンストラクタ
	~CMotionWolf01();									// デストラクタ
	HRESULT Init(CScene *pScene);						// 初期化処理
	void Uninit(void);									// 終了処理
	void Update(CScene *pScene);						// 更新処理
	static CMotionWolf01 *Create(CScene *pScene);		// 生成処理
};
#endif // _MOTION_WOLF01_H_