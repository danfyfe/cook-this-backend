# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
# require 'nokogiri'

# url1 = "https://www.allrecipes.com/recipe/18830/spanish-rice-bake/print/"
# url2 = "https://www.allrecipes.com/recipe/235158/worlds-best-honey-garlic-pork-chops/print/"
# url3 = "https://www.allrecipes.com/recipe/258468/beef-stroganoff-for-instant-pot/?internalSource=previously%20viewed&referringContentType=Homepage&clickId=cardslot%2010"

# def convert_to_print_url(url)
#   url = url.split("/")
#   url[0..url.index("recipe") + 2].join("/") + "/print"
# end


# def get_recipe_from_print_url(url)
#   html = open(url)
#   doc = Nokogiri::HTML(html)
#
#   ingredients = doc.css('.recipe-print__h2 + ul li, .recipe-print__h2 + ul + ul li').map do |li|
#     li.text.strip
#   end
#
#   directions = doc.css('.recipe-print__directions li').map do |li|
#     li.text.strip
#   end
#
#   prep_time_items = doc.css('.prepTime__item')
#
#   {
#     title: doc.css('.recipe-print__title').text,
#     description: doc.css('.recipe-print__description').text,
#     image: doc.css('.recipe-print__recipe-img').attr('src').value,
#     ingredients: ingredients,
#     directions: directions,
#     prep_time: prep_time_items[1].attr('aria-label'),
#     cook_time: prep_time_items[2].attr('aria-label'),
#     ready_in_time: prep_time_items[3].attr('aria-label'),
#   }
# end

# pp (get_recipe_from_print_url(convert_to_print_url(url3)))

# def avatars_array
#   ["https://previews.dropbox.com/p/thumb/AAcY-TFkDodtjsQ9EkWlm0Lb9AsbbXdHguHf8ATp1aERhFSddt8tmr569ZZ_OVmYZzwifhazhgDKnBjmYrTprXar1np9JF6uxHxLwmhQekibNTty2C3zHRhfSkdbDfTY-J1tE2MJJrRJgeMpDXkdftTdBuo8k0T7NMlNxMNVrxROYbBh5o1ay-xuHkpaBtZTA91emTHl1zF4UGown6eI_WMu70pXMyBEm3kR94xIFJzAQBEcs9RglmtU4PSmat84JMU6Gmi6nTqb9hDIKF6h1Of9MeByrBaRqHdvTQz8okIqJRb55pZXMedJDWKEqDTMBTF8Wsh8ztLNb3N2Za69Cd5B/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAd_EoVKS9iZWB7mm2P13gxvRGv_rnUPFD96a3YR1UlNQEp5jFM1eXdVd-0L2c_r8rxcN-Ex56dcIaPBD_v9CBu90uTv7cXTyM9Wuc-TwOW07nTMJMnDuIiL9v6Cl1UlvuXSm6mxp0U0lJne0FOQG0d8CVM5-HacEzI_MNkPVBKGy8CuRZax6Y6j0ZnqtxF_ceVpS66rtFo1KAByDZJF5MbYNKSvnfXcIbHGC7FTz8ragOm04C5-j6TLbopRjR0U1GConGZ1yZ63_B211GG_JfU-J5JqoTBwVnWKCFr5uOpXh7WjG-xwWt_bu39nGzyZXigbXCmCfy4yMJTKaPqXiR6U/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAdWwkQh8S4XbZ7KF0cI639NgWDbzC95_pxu21DJH4587lR1s9xh_Hv2BsJkE-Vaw9OgVplEBfUrPA51ohb334x9Db5WazoPnqihow00szPTTCRE_HPIwb5Ozr6fJfU81eoqbIChDGNrAa2RmsxqUVKYKfCgXT1565xih_HuwwcEYTUj-h8YAEOsjLapRXNiDpPtoZcd_0uaa0fiG-c3GnHVb7kTSAIUdM6wGyxBhW0SztfHQJKHcELsfYsEOARY2RNBCvBqN21k5WE9qWKQr1sKDZgoXHRrHP8UVhg1OvVAa_8l7EGW1itTX_Fwv7r_h2P7EgmPup6Wes3oKg3_ODVi/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAce07l20J2lt4vyXmm7HRDFRNyROjNi_wpYQwBWWEQU8R3Fveh12U1-4nUDKzJvupBhZJt6_fkMBX6UwPkNgs8oAtL6mZWcHT3Sr3pnODHvPc3Y5fHx3hfuEMKpn6eg0TxVny192iiXZMdrTq3P6HtfT8vVhfsQvgOln8oV918SraVPuZgn0mwZ5_vTI-tCm6g8G1HbwMEvh6hBdTxHo9xNkHK_hGnfqaBSVNPNCWRbIzTcW18ykJEzHdtnkHysm_G08xjOFznKSuhzrycw0XrQRRyv94K7OT92zBujBuB-hQpfxDApfE20KQUrhIemaw9ZQHm7cFgQAMYH_JSIlKDi/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAf2GC81QnR5dM2WuJmIPm1uS81iffDH4cTJ0a0c4D-WdofUUA15cx-NXRsRdyCLR80hAgthi8M472dCUW2T9DhDF3DxxSHYhKIlZXFR-wAq1YwX6ca_lxTSBnlWWP3ky4ra2y0eTSosKL_5TBnEavjEqSAhvbDLOyewyuOqb3T3o576tqVUPp-NC9k0BR3ooScT8mZiAXDRpzWVnQsmh9V48I50HU3rZKvriJvpabNLHM8N1QaBVtKeRVE-Z5ioglaw7KSCtIHtRoK0c_473KnlKBgiEDT1UaRT_apSwzAKWsAbFH0vdZQNDLDNm0vleD0xCZApSxmpkRPKCHCLpMfE/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAeEHzNu-bEOFPgbmtKiXN6pHzoPGIvCwtCzc6z1rcScTmnrKRa4LrKq_GYbhyviA1aueZqO_tYq9NxXEAXPCMltkG-cLGugH-nzNhWrWkp10sXe-OxXOAWU4gEF0PQfDgc4h0Esl9pSseKg1IxgOTjK-0QQidHruhmIRXvC1cQyu-Y1BI7vERzgzRQ17dFRUVTWTPygdzu7m9ClBc0TaZkVPn6KrLxVMj7lcMSCwAmXvD0zFmR-fwDB9aEc3XazoDaMbdYIOE6Li0fenbhZMYxykk-lSPmrQGquC0HG-tzqfWWYDdlKcCDmE_vg478WYjTvrz5qU59bY1lHnERjL2_y/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAevm6KtM5yMOpw2Ssz5M3YRBz5RQyCKH-KD81YUhle_LCclyWHFrsMpOD1RMxMXtYNcNpiJGWPs9Q011Uxve2qskUuNYWixp7jIDDri8OEghbB7Xvj_JaNNxhvsiTi_rDb8bUo2XKKM_XIfnFUMXncIwAZpo75A41mT0FzUh4wy9JuJ9oyQRgSD2tVW9LvrCKRfHHsU_Hgf6_9PLM8SjzBTR_pFCVK93yHEuxC8MGSKGQ6UDuXA4pQMIK11j_NXsy9bmPodEZkSnGt0gfkLBjLSnzFGlJr-yRi6ptHVppD6B63BiJRg9EXVecHVyiHkuAnLMBbjqapj1XDtFZj8CWtV/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAeIdmdt7X9NIw1THRDiY9MRRmEiRRgl2WZbF09LEVpwKfjIIz__a5QLs80KaN42zXHlAel-Jpsujd_8FD2jdT04J7nikNixeNNl28ia-zIzame3VL6AKAuXKobekHp7MtYHhQzigdZfeDS4MFixGnuiAO_ERR7KVWGwaeC6UYN4x70hbNcQHBvLXMtWh2BvZXQrBNhkCVMIgWW_Cq5upra4wuYNuoUTu-O0Qlpk7YStvV1DMr9jyoIFpuVJgoKj4dsTihO8d3BoMqcDDpmUHFhfNnuDhOz-wVHNBus6AQB-4hsbySRFwBfuNaAUr-WLGW-AgiqMPhtJb94BYeau_nRS/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAcL0B60VQRh-slISa8KAc562qlS4y2i4ruybWi4KgyoTlyVU_FlxxexuccPqKixFk6XGVqiWSglxxqGeoMXVuMb9Daem0RDAAMxXAxJlAbqEozbO_yDvWUAvDYhlmC510lgFyqg937_DoiLO87ZDO_4rPFR4apH73nNxjzmxiGb6lIO_aOhFOTr1d9-9sLtek3bpHB_Gep9-zvLDzllDtC7dkHTbm6YJR2Us4XCqiblPwHwyOGvQDYOxtQm0p3hlHQvq5HVFhZJDlD8xCAhKNDh_vr2FXpZzIp_80PppAihdIhQgKYMHTivBX6Dr6NU1bfcZ-E0BFJhZHmgF9s8IIz3/p.png?size=2048x1536&size_mode=3", "https://previews.dropbox.com/p/thumb/AAdYl2msmnLlQHOY8LBCWxeUqDjng6c0oUbc6uPzLNoIJPD_FU5nWBRvanlWLrw6jdLJOKa0DEzkhtBVjYA_SQbi09mIsmTlD8DJs9jYdogCnL9ogSwk4oCooEKgcqnG3xEDKFB630jHwPlTVM1jE-yL47zGlv6QbE09KjWON4K14zy5jIJmDax7D8C3ef9_fpvR4GqQ1AkhnUwcHAuh17APH_QZ3IgSwDzdheM_kW5KMZJtM5PkWFRYjb-cRlQ4G0HjfpDFHnVai-3NX-T0xQsgQ5v_dhlJLOV36pSEN0nXY2V0o74rJTzbtMazQi-myZ3ZagkxUotg6ewNIH_3V71a/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAdKrIhXr9GfeEgfv95XDXgYrXQI1OSlTthmsN8qnGtkBGouKH5AAdWyzAfx9sjGAhdYnSoad7HgvX_ybwIGRYAaf56wyO9LYoma6dKEVDRK2k5xew4aQObfUFMKLWfrs_DUmmMkq9JWA45WlUFiOg8qObUnTaYXzDYFFpja9v6MHvL2RK7hLXRU5FZtgdeoL3dyqRziOAWtDZNHHpVSNV-dXxVKxKJO3YHJOL5IUOshJBTk36Lo9RSd0DSv1B7qeS8nPHWkRqRNlYwS-lwz54hMbNCnbjUlfFCnvtIzGKgG-4AuSbB_uOMcFdPg2dMofiOzpTGszXSfDd3tBwao1SPc/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAcTojnyJErS5Nz8fPxUCthFcflmWXSiGoWw5E-ZEUzEm8EBBFSx3LBEwrGtoRp1753vxADzVtLaU5lFwa3mbX9uNzUcd0OQWAh_PjoPMTDSRzSzfVGsmk5WoptT15P_HknskTg3YQU6mgH8bSttIbhwCam9mh-zhNiGZnMKZDwEV7p8LFrcT5tqfTeI3sc0ufmTxCGaBnYgZc9grSk4cC4xRqv9LmMUHHTAuAuObswUsCI51apb6eof9U-KoxBryL505I6N8bvA-n3o4_dDUspbspH_QQFplaZJ-WYEMRHydC8DmSzBsX2kHTGMWW_zIT91r1wKhNn9Htgr9iEHhaoI/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAe3HTp58Jd9IJ0kPGak4oCZk1LKV5Pmfal_ecYVs3XpxQdgMSLibRZ6u_r-XUbPWu5nXn4h-FMlKEmq0P4A1Clge4eEgoYioaNAaDXtSD2kGSD90DCJRSnSQ5IneKriSQCugHDToa7m8SOJJdcn4ZhcSmLpxHY_ijpL3dAk38SDP40eGpiKfIFIRb0HF5YbCyqwX8BKA3TQVKwHfmphoZZe4j6Md3qtY5lyNz0F-W2M9s6mwqhNd9GT7ev4ixa-iMBhy02UmgHNT3o-YPlRSnJlm-xgSYSX2ktRxQIW77suCVdlbAT1Qtge03Kt7ZI2tAsUuQ9fZueva6ynP6yMJ6_G/p.png?fv_content=true&size_mode=5", "https://previews.dropbox.com/p/thumb/AAfLbFj2Wd0GUERbZhY7wE06El3lvmh1-D6tn0BPMPjhTyV4N4rQPWOl8yTz68OaiHMn9CJKoCvsQNWH6q0gULxigqH51ogW0rN05T6vapPES_zcc-Z6QF7ubqT5stlxaEeYd1N1rUg2PdLdGMtfVOLfaYr1xZ7BCHezGdgY9iU_WdOqqIn-LGcYiyxrcpbKTjR9ORa-rfTtoP-JXfqnyZtAJAZGn6e-TQybq9xsl5EWwsMa6Rv_NoIuTSBHdug6o6_QjaZf1wtWzS6gDS4HuR2fGJrzCcXDkNnz8NxrrAKvaEquL1mImZ9dM2iKaPsACULSiwPFIXN_Qa3bMmiE66kz/p.png?size=2048x1536&size_mode=3"]
# end
