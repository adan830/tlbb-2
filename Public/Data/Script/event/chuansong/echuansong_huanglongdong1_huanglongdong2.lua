
--��ҽ���һ�� area ʱ����
function x400140_OnEnterArea( sceneId, selfId )
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, sceneId, 215, 160)
end

--�����һ�� area ����һ��ʱ��û����ʱ����
function x400140_OnTimer( sceneId, selfId )
	-- ���룬������� area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5�����δ����
	if StandingTime >= 5000 then
		x400140_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪һ�� area ʱ����
function x400140_OnLeaveArea( sceneId, selfId )
end