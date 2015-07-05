.class LBJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:LBH;


# direct methods
.method constructor <init>(LBH;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, LBJ;->b:LBH;

    iput-object p2, p0, LBJ;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 210
    const-string v0, "SetBasecamp.Error"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LBJ;->a:Ljava/io/IOException;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LGF;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method
