.class public LCm;
.super LAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAd",
        "<",
        "Lcom/yik/yak/ui/activity/SendAYak;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 1

    .prologue
    .line 1124
    invoke-direct {p0, p1}, LAd;-><init>(Ljava/lang/Object;)V

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, LCm;->a:Z

    .line 1125
    return-void
.end method

.method synthetic constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;LBR;)V
    .locals 0

    .prologue
    .line 1114
    invoke-direct {p0, p1}, LCm;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    return-void
.end method


# virtual methods
.method protected varargs a(Lcom/yik/yak/ui/activity/SendAYak;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1149
    iget-boolean v0, p0, LCm;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LCm;->b:Ljava/io/File;

    if-nez v0, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-object v4

    .line 1154
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LCm;->b:Ljava/io/File;

    invoke-static {v0, v1}, LxG;->a(Lxx;Ljava/io/File;)LxG;

    move-result-object v0

    .line 1156
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->b(LxG;)LxF;

    move-result-object v0

    iget-object v1, p0, LCm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 1161
    const/4 v1, 0x0

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    invoke-virtual {v0}, LwY;->a()LxJ;

    move-result-object v0

    .line 1163
    invoke-virtual {v0}, LxJ;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1168
    invoke-static {p1}, Lcom/yik/yak/ui/activity/SendAYak;->p(Lcom/yik/yak/ui/activity/SendAYak;)V

    goto :goto_0
.end method

.method protected a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 1176
    invoke-static {p1}, Lcom/yik/yak/ui/activity/SendAYak;->m(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHf;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/graphics/Bitmap;)V

    .line 1177
    invoke-static {p1}, Lcom/yik/yak/ui/activity/SendAYak;->o(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 1178
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1114
    check-cast p1, Lcom/yik/yak/ui/activity/SendAYak;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, LCm;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1129
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1143
    :goto_0
    return v0

    .line 1135
    :cond_0
    invoke-static {p3}, LHf;->a(Ljava/lang/String;)V

    .line 1137
    iput-object v2, p0, LCm;->b:Ljava/io/File;

    .line 1139
    iput-object p1, p0, LCm;->c:Ljava/lang/String;

    .line 1140
    const/4 v2, 0x1

    iput-boolean v2, p0, LCm;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1141
    goto :goto_0

    .line 1143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1114
    check-cast p1, Lcom/yik/yak/ui/activity/SendAYak;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, LCm;->a(Lcom/yik/yak/ui/activity/SendAYak;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
