.class final LuZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LuP;


# direct methods
.method constructor <init>(LuP;)V
    .locals 0

    iput-object p1, p0, LuZ;->a:LuP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, LuZ;->a:LuP;

    const/4 v1, 0x0

    iput-boolean v1, v0, LuP;->g:Z

    iget-object v1, p0, LuZ;->a:LuP;

    const-string v2, "session"

    const-wide/16 v4, 0x0

    iget-object v0, p0, LuZ;->a:LuP;

    invoke-virtual {v0}, LuP;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, LuZ;->a:LuP;

    invoke-virtual {v0}, LuP;->f()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-static/range {v1 .. v9}, LuP;->a(LuP;Ljava/lang/Object;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
