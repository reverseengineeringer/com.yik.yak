.class public LEU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/MeFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/MeFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 164
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0}, LAg;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    iget-object v1, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Notification;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;Lcom/yik/yak/data/models/Notification;)Lcom/yik/yak/data/models/Notification;

    .line 168
    iget-object v0, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;)Lcom/yik/yak/data/models/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;)Lcom/yik/yak/data/models/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;)Lcom/yik/yak/data/models/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    sget-object v2, LAA;->i:LAA;

    const-string v3, "read"

    invoke-virtual {v1, v2, v0, v3}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LAA;Ljava/util/List;Ljava/lang/String;)V

    .line 175
    :cond_1
    iget-object v0, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;)Lcom/yik/yak/data/models/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;)Lcom/yik/yak/data/models/Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/data/models/Notification;->getThingId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Ljava/lang/String;)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 178
    iget-boolean v1, v0, Lcom/yik/yak/data/models/Yak;->HasError:Z

    if-nez v1, :cond_3

    .line 179
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-virtual {v2}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/activity/YakDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const-string v2, "canVote"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v2, "canReply"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/Yak;->CanReply:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v2, "canReport"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v2, "caller"

    const-string v3, "NotificationCenter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "replyId"

    iget-object v3, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-static {v3}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/ui/fragment/MeFragment;)Lcom/yik/yak/data/models/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/Notification;->getReplyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :try_start_0
    const-string v2, "yak"

    new-instance v3, LAv;

    invoke-direct {v3}, LAv;-><init>()V

    invoke-virtual {v3, v0}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    iget-object v0, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/fragment/MeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    :cond_2
    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, LEU;->a:Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "The yak is no longer available."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
