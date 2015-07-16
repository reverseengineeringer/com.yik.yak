.class public LFa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/MoreFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

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

    .line 146
    iget-object v0, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(Lcom/yik/yak/ui/fragment/MoreFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/SimpleListItem;

    .line 147
    invoke-virtual {v0}, Lcom/yik/yak/data/models/SimpleListItem;->isSectionHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v2, 0x3

    .line 154
    :try_start_0
    iget-object v1, v0, Lcom/yik/yak/data/models/SimpleListItem;->index:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 279
    iget-object v1, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    const-string v1, ""

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v1

    .line 281
    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->item:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v0, v2, v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v1, v2

    goto :goto_1

    .line 161
    :sswitch_0
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->i(Ljava/lang/String;)V

    .line 162
    const-string v0, "Top Yaks In My Area"

    invoke-static {v0, v4, v4, v4, v4}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a(Ljava/lang/String;ZZZZ)Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;

    move-result-object v0

    .line 163
    const-string v1, "GreatestScreen"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a(Ljava/lang/String;)V

    .line 164
    sget-object v1, LDX;->b:LDX;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/AreaTopYaksFragment;->a(LDX;)V

    .line 165
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 168
    :sswitch_1
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LHa;->i(Ljava/lang/String;)V

    .line 169
    const-string v1, "Other Top Yaks"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v0

    .line 170
    const-string v1, "OtherScreen"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 174
    :sswitch_2
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->i(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v1, "tel:18444689257"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 180
    :sswitch_3
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->i(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/yik/yak/ui/fragment/RulesFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/RulesFragment;-><init>()V

    .line 182
    const-string v1, "RulesScreen"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/RulesFragment;->a(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 186
    :sswitch_4
    iget-object v0, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08018d

    const v2, 0x7f08018f

    invoke-static {v0, v1, v2}, LHt;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 189
    :sswitch_5
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f08003d

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LHa;->i(Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 192
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 195
    iget-object v0, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 197
    :cond_2
    const-string v1, "Rate Yik Yak"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v0

    .line 198
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 202
    :sswitch_6
    new-instance v0, Lcom/yik/yak/ui/fragment/ContactUsFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;-><init>()V

    .line 203
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 206
    :sswitch_7
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LHa;->i(Ljava/lang/String;)V

    .line 208
    :try_start_1
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 209
    const-string v1, "fb://profile/575262255856926"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 213
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 219
    :catch_1
    move-exception v1

    const-string v1, "Facebook"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v0

    .line 220
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 215
    :cond_3
    :try_start_2
    const-string v1, "Facebook"

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v1

    .line 216
    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v3, LCU;->d:LCU;

    invoke-virtual {v2, v3, v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 224
    :sswitch_8
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LHa;->i(Ljava/lang/String;)V

    .line 226
    :try_start_3
    const-string v1, "https://twitter.com/yikyakapp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 229
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 235
    :catch_2
    move-exception v1

    const-string v1, "Twitter"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v0

    .line 236
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 231
    :cond_4
    :try_start_4
    const-string v1, "Twitter"

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v1

    .line 232
    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v3, LCU;->d:LCU;

    invoke-virtual {v2, v3, v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 240
    :sswitch_9
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LHa;->i(Ljava/lang/String;)V

    .line 243
    :try_start_5
    const-string v1, "instagram://user?username=yikyakapp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 247
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 253
    :catch_3
    move-exception v1

    const-string v1, "Instagram"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v0

    .line 254
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v2, LCU;->d:LCU;

    invoke-virtual {v1, v2, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 249
    :cond_5
    :try_start_6
    const-string v1, "Instagram"

    iget-object v2, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yik/yak/ui/fragment/WebFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/WebFragment;

    move-result-object v1

    .line 250
    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    sget-object v3, LCU;->d:LCU;

    invoke-virtual {v2, v3, v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 258
    :sswitch_a
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "More"

    invoke-virtual {v0, v1}, LHa;->f(Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    const-string v1, "title"

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f080198

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "url"

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f080199

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 266
    :sswitch_b
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "More"

    invoke-virtual {v0, v1}, LHa;->e(Ljava/lang/String;)V

    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/PrivacyPolicyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    const-string v1, "layoutId"

    const v2, 0x7f030022

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v1, "title"

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "url"

    iget-object v2, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v3, 0x7f080151

    invoke-virtual {v2, v3}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/fragment/MoreFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 275
    :sswitch_c
    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/yik/yak/data/models/SimpleListItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LFa;->a:Lcom/yik/yak/ui/fragment/MoreFragment;

    const v2, 0x7f080031

    invoke-virtual {v1, v2}, Lcom/yik/yak/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LHa;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
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
