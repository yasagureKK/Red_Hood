//=============================================================================
// モーション処理 [motion.h]
// Author : 草刈 翔
//=============================================================================
#ifndef _MOTION_H_
#define _MOTION_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "main.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************
#define MAX_MODEL_NUM	(16)	// モデル(パーツ)の最大数
#define MAX_KEY_NUM		(32)	// キーの情報の最大数
#define MAX_MOTION_NUM	(16)	// モーションの最大数

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CScene;

//*****************************************************************************
// クラスの定義
//*****************************************************************************
class CMotion
{
public:
	//キーの構造体
	typedef struct
	{
		D3DXVECTOR3 pos;	//位置
		D3DXVECTOR3 rot;	//向き
	} KEY;

	//キー情報の構造体
	typedef struct
	{
		int nFrame;					//再生フレーム
		KEY aKey[MAX_MODEL_NUM];	//各モデルのキー要素(パーツの最大数)
	} KEY_INFO;

	//モーション情報の構造体
	typedef struct
	{
		int nLoop;						//ループするかどうか
		int nNumKey;					//キーの総数
		KEY_INFO aKeyInfo[MAX_KEY_NUM];	//キーの情報
	} MOTION_INFO;

	CMotion();													// コンストラクタ
	~CMotion();													// デストラクタ
	virtual HRESULT Init(CScene *pScene) = 0;					// 初期化処理
	virtual void Uninit(void) = 0;								// 終了処理
	virtual void Update(CScene *pScene) = 0;					// 更新処理
	bool GetConnect(void) { return m_bConnect; }				// モーション結合取得処理
	void SetMotion(int nType);									// モーション設定処理
	int GetMotion(void) { return m_nType; }						// モーション取得処理
	int GetNextMotion(void) { return m_nTypeNext; }				// 次のモーション取得処理
	void SetStop(bool bStop) { m_bStop = bStop; }				// モーションを止めるか設定処理
	bool GetStop(void) { return m_bStop; }						// モーションを止めるか取得処理

protected:
	int m_nMaxModelNum;											// モデル(パーツ)の最大数
	int m_nMaxMotionNum;										// モーションの最大数
	int m_nNumKey;												// キー数
	int m_nKey;													// 現在のキー
	int m_nKeyOld;												// 1フレーム前のキー
	int m_nType;												// 現在のモーションタイプ
	int m_nTypeNext;											// 次のモーションタイプ
	float m_fCounter;											// モーションのカウンター
	bool m_bConnect;											// モーション結合中かどうか
	bool m_bStop;												// モーションを止めるかどうか
	MOTION_INFO m_aInfo[MAX_MOTION_NUM];						// モーション情報
};
#endif // _MOTION_H_