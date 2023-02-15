//=============================================================================
// ���[�V�������� [motion.cpp]
// Author : ���� ��
//=============================================================================
//*****************************************************************************
// �w�b�_�t�@�C���̃C���N���[�h
//*****************************************************************************
#include "motion.h"
#include "player.h"
#include "enemy.h"

//*****************************************************************************
// �}�N����`
//*****************************************************************************
#define MOTION_PLAYER_FILE	"data/TEXT/motion_player.txt"
#define MOTION_WOLF00_FILE	"data/TEXT/motion_wolf00.txt"
#define MOTION_WOLF01_FILE	"data/TEXT/motion_wolf01.txt"
#define MOTION_BOSS_FILE	"data/TEXT/motion_boss.txt"

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CMotion::CMotion(void)
{
	// �ϐ��̃N���A
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
// �f�X�g���N�^
//=============================================================================
CMotion::~CMotion()
{

}

//=============================================================================
// ���[�V�����ݒ菈��
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

	// �� �v���C���[�̃��[�V����
	/*�@[0] �j���[�g����
	/*	[1] �ړ�
	/*	[2] �W�����v
	/*	[3] ���n
	/*	[4] �_�b�V��
	/*	[5] �U���F�� (1�i��)
	/*	[6] �U���F�� (2�i��)
	/*	[7] �U���F�� (3�i��)
	/*	[8] �U���F�{�E�K��
	/*	[9] ��_���[�W
	/*	[10]�_�E��
	/*	[11]�N���A
	/*	[12]�N���A(�ҋ@)		*/

	// �� �T00�̃��[�V����
	/*�@[0] �j���[�g����
	/*	[1] �ړ�
	/*	[2] �U��
	/*	[3] ��_���[�W			
	/*	[4]	�_�E��				*/

	// �� �T01�̃��[�V����
	/*�@[0] �j���[�g����
	/*	[1] �ړ�
	/*	[2] �U��
	/*	[3] ��_���[�W			
	/*	[4]	�_�E��				*/

	// �� �{�X�̃��[�V����
	/*�@[0] �j���[�g����
	/*	[1] �ړ�
	/*	[2] �U��
	/*	[3] �_�E��				
	/*	[4] �W�����v(����)
	/*	[5] �W�����v
	/*	[6] ���n
	/*	[7] �`���[�W
	/*	[8] �_�b�V��			*/
}