.class LEo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LEn;


# direct methods
.method constructor <init>(LEn;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, LEo;->a:LEn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v0, p0, LEo;->a:LEn;

    invoke-static {v0}, LEn;->a(LEn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/SimpleListItem;

    .line 145
    invoke-virtual {v0}, Lcom/yik/yak/data/models/SimpleListItem;->isSectionHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v2, 0x3

    .line 152
    :try_start_0
    iget-object v1, v0, Lcom/yik/yak/data/models/SimpleListItem;->index:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 273
    iget-object v1, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const-string v1, ""

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v1

    .line 275
    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    invoke-virtual {v1, v0}, LEP;->a(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v0, v2, v1}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v1, v2

    goto :goto_1

    .line 159
    :sswitch_0
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LEo;->a:LEn;

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGs;->g(Ljava/lang/String;)V

    .line 160
    const-string v0, "Top Yaks In My Area"

    invoke-static {v0, v4, v4, v4, v4}, LDc;->a(Ljava/lang/String;ZZZZ)LDc;

    move-result-object v0

    .line 161
    const-string v1, "GreatestScreen"

    invoke-virtual {v0, v1}, LDc;->a(Ljava/lang/String;)V

    .line 162
    sget-object v1, LDt;->b:LDt;

    invoke-virtual {v0, v1}, LDc;->a(LDt;)V

    .line 163
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 166
    :sswitch_1
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    const v3, 0x7f080035

    invoke-virtual {v2, v3}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->g(Ljava/lang/String;)V

    .line 167
    const-string v1, "Other Top Yaks"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 168
    const-string v1, "OtherScreen"

    invoke-virtual {v0, v1}, LEP;->a(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 172
    :sswitch_2
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LEo;->a:LEn;

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGs;->g(Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v1, "tel:18444689257"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1, v0}, LEn;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 178
    :sswitch_3
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LEo;->a:LEn;

    const v2, 0x7f08003b

    invoke-virtual {v1, v2}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGs;->g(Ljava/lang/String;)V

    .line 179
    new-instance v0, LEN;

    invoke-direct {v0}, LEN;-><init>()V

    .line 180
    const-string v1, "RulesScreen"

    invoke-virtual {v0, v1}, LEN;->a(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 184
    :sswitch_4
    iget-object v0, p0, LEo;->a:LEn;

    invoke-virtual {v0}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080162

    const v2, 0x7f080163

    invoke-static {v0, v1, v2}, LGM;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 187
    :sswitch_5
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->g(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    invoke-virtual {v2}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 193
    iget-object v0, p0, LEo;->a:LEn;

    invoke-virtual {v0, v2}, LEn;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    :cond_2
    const-string v1, "Rate Yik Yak"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 196
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 200
    :sswitch_6
    new-instance v0, LDJ;

    invoke-direct {v0}, LDJ;-><init>()V

    .line 201
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 204
    :sswitch_7
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->g(Ljava/lang/String;)V

    .line 206
    :try_start_1
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 207
    const-string v1, "fb://profile/575262255856926"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 211
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1, v2}, LEn;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 217
    :catch_1
    move-exception v1

    const-string v1, "Facebook"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 218
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 213
    :cond_3
    :try_start_2
    const-string v1, "Facebook"

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v1

    .line 214
    iget-object v2, p0, LEo;->a:LEn;

    sget-object v3, LCH;->d:LCH;

    invoke-virtual {v2, v3, v1}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 222
    :sswitch_8
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->g(Ljava/lang/String;)V

    .line 224
    :try_start_3
    const-string v1, "https://twitter.com/yikyakapp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 227
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1, v2}, LEn;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 233
    :catch_2
    move-exception v1

    const-string v1, "Twitter"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 234
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 229
    :cond_4
    :try_start_4
    const-string v1, "Twitter"

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v1

    .line 230
    iget-object v2, p0, LEo;->a:LEn;

    sget-object v3, LCH;->d:LCH;

    invoke-virtual {v2, v3, v1}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 238
    :sswitch_9
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->g(Ljava/lang/String;)V

    .line 241
    :try_start_5
    const-string v1, "instagram://user?username=yikyakapp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 245
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1, v2}, LEn;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 251
    :catch_3
    move-exception v1

    const-string v1, "Instagram"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 252
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 247
    :cond_5
    :try_start_6
    const-string v1, "Instagram"

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v1

    .line 248
    iget-object v2, p0, LEo;->a:LEn;

    sget-object v3, LCH;->d:LCH;

    invoke-virtual {v2, v3, v1}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 256
    :sswitch_a
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    const v3, 0x7f08004a

    invoke-virtual {v2, v3}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->g(Ljava/lang/String;)V

    .line 257
    const-string v1, "Terms of Service"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 258
    const-string v1, "TermsOfService"

    invoke-virtual {v0, v1}, LEP;->a(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 262
    :sswitch_b
    invoke-static {}, LGs;->a()LGs;

    move-result-object v1

    iget-object v2, p0, LEo;->a:LEn;

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGs;->g(Ljava/lang/String;)V

    .line 263
    const-string v1, "Privacy Policy"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, LEP;->a(Ljava/lang/String;Ljava/lang/String;)LEP;

    move-result-object v0

    .line 264
    const-string v1, "PrivacyPolicy"

    invoke-virtual {v0, v1}, LEP;->a(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, LEo;->a:LEn;

    sget-object v2, LCH;->d:LCH;

    invoke-virtual {v1, v2, v0}, LEn;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 269
    :sswitch_c
    iget-object v1, p0, LEo;->a:LEn;

    invoke-virtual {v1}, LEn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, LEo;->a:LEn;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, LEn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGs;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_8
        0xd -> :sswitch_7
        0x11 -> :sswitch_9
        0x12 -> :sswitch_2
        0x1e -> :sswitch_3
        0x1f -> :sswitch_a
        0x20 -> :sswitch_b
        0x26 -> :sswitch_c
    .end sparse-switch
.end method
