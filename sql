# vdc announcements get recipients to client selected 
select distinct case v.level 
when 'Company' then
concat(v.announcementUid,'-', v.siteUid,'-', v.buildingUid,'-', v.floorUid,'-', v.roomUid,'-', v.companyUid, '-',v.level) 
when 'Room' then
concat(v.announcementUid,'-', v.siteUid,'-', v.buildingUid,'-', v.floorUid,'-', v.roomUid,'-',v.level) 
when 'Floor' then
concat(v.announcementUid,'-', v.siteUid,'-', v.buildingUid,'-', v.floorUid,'-' ,v.level) 
when 'Building' then
concat(v.announcementUid,'-', v.siteUid,'-', v.buildingUid, '-',v.level) 
when 'Site' then
concat(v.announcementUid,'-', v.siteUid,'-',v.level) 
else 
concat(v.announcementUid,'-',v.level) 
end
from VdcAnnouncementRecipients as v
