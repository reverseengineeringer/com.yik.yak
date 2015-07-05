.class LEz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LEy;


# direct methods
.method constructor <init>(LEy;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, LEz;->a:LEy;

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
    .line 112
    iget-object v0, p0, LEz;->a:LEy;

    iget-object v0, v0, LEy;->b:LEB;

    invoke-virtual {v0, p3}, LEB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 114
    iget-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    if-eqz v1, :cond_1

    .line 115
    iget-object v0, p0, LEz;->a:LEy;

    invoke-static {v0}, LEy;->a(LEy;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    if-eqz v1, :cond_2

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 121
    invoke-static {}, LAB;->a()LAB;

    move-result-object v1

    invoke-virtual {v1, v0}, LAB;->a(Lcom/yik/yak/data/models/PeekLocation;)V

    .line 122
    iget-object v1, p0, LEz;->a:LEy;

    iget-object v1, v1, LEy;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 125
    :cond_2
    invoke-virtual {v0}, Lcom/yik/yak/data/models/PeekLocation;->isSectionHeader()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v2, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "title"

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "location"

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-boolean v2, v0, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    if-nez v2, :cond_3

    .line 135
    const-string v2, "peekID"

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_3
    iget-object v2, p0, LEz;->a:LEy;

    iget-boolean v3, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmit:Z

    iput-boolean v3, v2, LEy;->f:Z

    .line 139
    iget-object v2, p0, LEz;->a:LEy;

    const/4 v3, 0x1

    iput-boolean v3, v2, LEy;->e:Z

    .line 140
    const-string v2, "isCustom"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v2, "KEY_CAN_SUBMIT"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmit:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string v2, "canVote"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/PeekLocation;->canVote:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v2, "canReply"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/PeekLocation;->canReply:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v2, "canReport"

    iget-boolean v3, v0, Lcom/yik/yak/data/models/PeekLocation;->canReport:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const-string v2, "peekLatitude"

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->latitude:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "peekLongitude"

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->longitude:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "KEY_TITLE"

    iget-object v3, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, LGs;->a()LGs;

    move-result-object v2

    invoke-virtual {v2, v0}, LGs;->a(Lcom/yik/yak/data/models/PeekLocation;)V

    .line 151
    new-instance v0, LEv;

    invoke-direct {v0}, LEv;-><init>()V

    .line 152
    invoke-virtual {v0, v1}, LEv;->setArguments(Landroid/os/Bundle;)V

    .line 153
    iget-object v1, p0, LEz;->a:LEy;

    sget-object v2, LCH;->b:LCH;

    invoke-virtual {v1, v2, v0}, LEy;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0
.end method
