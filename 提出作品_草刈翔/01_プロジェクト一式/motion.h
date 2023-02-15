//=============================================================================
// ���[�V�������� [motion.h]
// Author : ���� ��
//=============================================================================
#ifndef _MOTION_H_
#define _MOTION_H_

//*****************************************************************************
// �w�b�_�t�@�C���̃C���N���[�h
//*****************************************************************************
#include "main.h"

//*****************************************************************************
// �}�N����`
//*****************************************************************************
#define MAX_MODEL_NUM	(16)	// ���f��(�p�[�c)�̍ő吔
#define MAX_KEY_NUM		(32)	// �L�[�̏��̍ő吔
#define MAX_MOTION_NUM	(16)	// ���[�V�����̍ő吔

//*****************************************************************************
// �O���錾
//*****************************************************************************
class CScene;

//*****************************************************************************
// �N���X�̒�`
//*****************************************************************************
class CMotion
{
public:
	//�L�[�̍\����
	typedef struct
	{
		D3DXVECTOR3 pos;	//�ʒu
		D3DXVECTOR3 rot;	//����
	} KEY;

	//�L�[���̍\����
	typedef struct
	{
		int nFrame;					//�Đ��t���[��
		KEY aKey[MAX_MODEL_NUM];	//�e���f���̃L�[�v�f(�p�[�c�̍ő吔)
	} KEY_INFO;

	//���[�V�������̍\����
	typedef struct
	{
		int nLoop;						//���[�v���邩�ǂ���
		int nNumKey;					//�L�[�̑���
		KEY_INFO aKeyInfo[MAX_KEY_NUM];	//�L�[�̏��
	} MOTION_INFO;

	CMotion();													// �R���X�g���N�^
	~CMotion();													// �f�X�g���N�^
	virtual HRESULT Init(CScene *pScene) = 0;					// ����������
	virtual void Uninit(void) = 0;								// �I������
	virtual void Update(CScene *pScene) = 0;					// �X�V����
	bool GetConnect(void) { return m_bConnect; }				// ���[�V���������擾����
	void SetMotion(int nType);									// ���[�V�����ݒ菈��
	int GetMotion(void) { return m_nType; }						// ���[�V�����擾����
	int GetNextMotion(void) { return m_nTypeNext; }				// ���̃��[�V�����擾����
	void SetStop(bool bStop) { m_bStop = bStop; }				// ���[�V�������~�߂邩�ݒ菈��
	bool GetStop(void) { return m_bStop; }						// ���[�V�������~�߂邩�擾����

protected:
	int m_nMaxModelNum;											// ���f��(�p�[�c)�̍ő吔
	int m_nMaxMotionNum;										// ���[�V�����̍ő吔
	int m_nNumKey;												// �L�[��
	int m_nKey;													// ���݂̃L�[
	int m_nKeyOld;												// 1�t���[���O�̃L�[
	int m_nType;												// ���݂̃��[�V�����^�C�v
	int m_nTypeNext;											// ���̃��[�V�����^�C�v
	float m_fCounter;											// ���[�V�����̃J�E���^�[
	bool m_bConnect;											// ���[�V�������������ǂ���
	bool m_bStop;												// ���[�V�������~�߂邩�ǂ���
	MOTION_INFO m_aInfo[MAX_MOTION_NUM];						// ���[�V�������
};
#endif // _MOTION_H_