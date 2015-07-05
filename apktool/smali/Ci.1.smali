.class public LCi;
.super LzT;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LzT",
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
    .line 1053
    invoke-direct {p0, p1}, LzT;-><init>(Ljava/lang/Object;)V

    .line 1046
    const/4 v0, 0x0

    iput-boolean v0, p0, LCi;->a:Z

    .line 1054
    return-void
.end method

.method synthetic constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;LBO;)V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0, p1}, LCi;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    return-void
.end method


# virtual methods
.method protected varargs a(Lcom/yik/yak/ui/activity/SendAYak;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1078
    iget-boolean v0, p0, LCi;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LCi;->b:Ljava/io/File;

    if-nez v0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-object v4

    .line 1083
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LCi;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lxw;->a(Lxn;Ljava/io/File;)Lxw;

    move-result-object v0

    .line 1085
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->b(Lxw;)Lxv;

    move-result-object v0

    iget-object v1, p0, LCi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 1091
    const/4 v1, 0x0

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    invoke-virtual {v0}, LwP;->a()Lxz;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Lxz;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1093
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

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 1104
    invoke-static {p1}, Lcom/yik/yak/ui/activity/SendAYak;->g(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGy;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/graphics/Bitmap;)V

    .line 1105
    invoke-static {p1}, Lcom/yik/yak/ui/activity/SendAYak;->i(Lcom/yik/yak/ui/activity/SendAYak;)V

    .line 1106
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1043
    check-cast p1, Lcom/yik/yak/ui/activity/SendAYak;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, LCi;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1058
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1072
    :goto_0
    return v0

    .line 1064
    :cond_0
    invoke-static {p3}, LGy;->a(Ljava/lang/String;)V

    .line 1066
    iput-object v2, p0, LCi;->b:Ljava/io/File;

    .line 1068
    iput-object p1, p0, LCi;->c:Ljava/lang/String;

    .line 1069
    const/4 v2, 0x1

    iput-boolean v2, p0, LCi;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1070
    goto :goto_0

    .line 1072
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1043
    check-cast p1, Lcom/yik/yak/ui/activity/SendAYak;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, LCi;->a(Lcom/yik/yak/ui/activity/SendAYak;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
