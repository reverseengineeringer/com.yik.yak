.class LEz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LEy;


# direct methods
.method constructor <init>(LEy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, LEz;->b:LEy;

    iput-object p2, p0, LEz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, LEz;->a:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, LEz;->b:LEy;

    iget-object v0, v0, LEy;->b:Ljava/lang/String;

    invoke-static {v0}, LAa;->b(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, LEz;->b:LEy;

    iget-boolean v0, v0, LEy;->c:Z

    if-nez v0, :cond_0

    .line 302
    const-string v0, "ids"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ids"

    const-string v3, ""

    invoke-static {v2, v3}, LAa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LEz;->b:LEy;

    iget-object v2, v2, LEy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    iget-object v0, p0, LEz;->b:LEy;

    iget-boolean v0, v0, LEy;->d:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, LEz;->b:LEy;

    iget-object v0, v0, LEy;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yik/yak/YikYak;->a(Ljava/lang/String;)V

    .line 307
    :cond_1
    iget-object v0, p0, LEz;->b:LEy;

    iget-object v0, v0, LEy;->e:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LEz;->b:LEy;

    iget-object v2, v2, LEy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->a(Ljava/lang/String;)V

    .line 309
    :cond_2
    return-void
.end method
